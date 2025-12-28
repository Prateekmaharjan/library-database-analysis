CREATE OR REPLACE FUNCTION borrow_book(
    p_member_id BIGINT,
    p_book_copy_id BIGINT,
    p_due_date DATE
)
RETURNS VOID AS $$
BEGIN
    INSERT INTO borrow_records (
        member_id,
        book_copy_id,
        due_date
    )
    VALUES (
        p_member_id,
        p_book_copy_id,
        p_due_date
    );

    UPDATE book_copies
    SET is_available = FALSE
    WHERE id = p_book_copy_id;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION return_book(
    p_book_copy_id BIGINT
)
RETURNS VOID AS $$
BEGIN
    UPDATE borrow_records
    SET returned_date = CURRENT_DATE
    WHERE book_copy_id = p_book_copy_id
      AND returned_date IS NULL;

    UPDATE book_copies
    SET is_available = TRUE
    WHERE id = p_book_copy_id;
END;
$$ LANGUAGE plpgsql;
