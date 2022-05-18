.class public Lcn/nubia/notepad/view/NotePadEditTextView;
.super Landroid/widget/EditText;
.source "NotePadEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/view/NotePadEditTextView$NotePadInputConnectionWrapper;
    }
.end annotation


# instance fields
.field private final DOUBLE_TAP_TIMEOUT:I

.field private isMove:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapEnabled:Z

.field private mListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

.field private mNoteMode:I

.field private mOffset:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mOffset:I

    .line 25
    const/16 v0, 0x190

    iput v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->DOUBLE_TAP_TIMEOUT:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mOffset:I

    .line 25
    const/16 v0, 0x190

    iput v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->DOUBLE_TAP_TIMEOUT:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "paramInt"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mOffset:I

    .line 25
    const/16 v0, 0x190

    iput v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->DOUBLE_TAP_TIMEOUT:I

    .line 42
    return-void
.end method

.method private addNoteModeTextView()V
    .locals 11

    .prologue
    .line 88
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "content":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->getSelectionStart()I

    move-result v10

    .line 90
    .local v10, "splitIndex":I
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    invoke-interface {v0, p0}, Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;->getChildViewIndex(Landroid/view/View;)I

    move-result v9

    .line 93
    .local v9, "index":I
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v7, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mNoteMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    add-int/lit8 v1, v9, 0x1

    .line 96
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mNoteMode:I

    const-string v4, "0"

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 95
    invoke-interface/range {v0 .. v6}, Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    .line 107
    .end local v9    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 99
    .restart local v9    # "index":I
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    add-int/lit8 v1, v9, 0x1

    .line 100
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "0"

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 99
    invoke-interface/range {v0 .. v6}, Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v8

    .line 104
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isConsideredDoubaleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .prologue
    .line 142
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mOffset:I

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 160
    .line 161
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 162
    .local v0, "inputConnection":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 163
    const/4 v1, 0x0

    .line 165
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcn/nubia/notepad/view/NotePadEditTextView$NotePadInputConnectionWrapper;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcn/nubia/notepad/view/NotePadEditTextView$NotePadInputConnectionWrapper;-><init>(Lcn/nubia/notepad/view/NotePadEditTextView;Landroid/view/inputmethod/InputConnection;Z)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 149
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    invoke-interface {v0}, Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;->updateFocusPopupWindow()V

    .line 152
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 54
    const/16 v1, 0x43

    if-ne p1, v1, :cond_1

    .line 55
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->getSelectionStart()I

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    invoke-interface {v1, p0}, Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;->removeChildView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->getSelectionStart()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 60
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    invoke-interface {v1}, Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;->cancelRecording()V

    .line 69
    :cond_1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 78
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 79
    iget v0, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mNoteMode:I

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->addNoteModeTextView()V

    .line 84
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    .line 112
    invoke-interface {v4}, Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;->isInPreviewMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 114
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 115
    .local v2, "y":F
    invoke-virtual {p0, v1, v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->getOffsetForPosition(FF)I

    move-result v4

    iput v4, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mOffset:I

    .line 116
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    iget v5, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mOffset:I

    invoke-static {v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 119
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 121
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 122
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->isMove:Z

    .line 133
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 138
    :cond_2
    :goto_1
    return v3

    .line 123
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 124
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 125
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->isMove:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 126
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 127
    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 128
    invoke-direct {p0, v4, v5, p1}, Lcn/nubia/notepad/view/NotePadEditTextView;->isConsideredDoubaleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 131
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mCurrentDownEvent:Landroid/view/MotionEvent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setActivity(Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    .line 46
    return-void
.end method

.method public setEditMode(I)V
    .locals 0
    .param p1, "noteMode"    # I

    .prologue
    .line 49
    iput p1, p0, Lcn/nubia/notepad/view/NotePadEditTextView;->mNoteMode:I

    .line 50
    return-void
.end method
