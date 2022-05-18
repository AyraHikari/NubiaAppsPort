.class public Lcom/android/calculator2/CalculatorFormula;
.super Lcom/android/calculator2/AlignedTextView;
.source "CalculatorFormula.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/CalculatorFormula$OnFormulaContextMenuClickListener;,
        Lcom/android/calculator2/CalculatorFormula$OnTextSizeChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CalculatorFormula"

.field public static final TAG_ACTION_MODE:Ljava/lang/String; = "ACTION_MODE"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mCharWidth:F

.field private final mClipboardManager:Landroid/content/ClipboardManager;

.field private mContextMenu:Landroid/view/ContextMenu;

.field private final mMaximumTextSize:F

.field private final mMinimumTextSize:F

.field private mOnContextMenuClickListener:Lcom/android/calculator2/CalculatorFormula$OnFormulaContextMenuClickListener;

.field private mOnDisplayMemoryOperationsListener:Lcom/android/calculator2/Calculator$OnDisplayMemoryOperationsListener;

.field private mOnTextSizeChangeListener:Lcom/android/calculator2/CalculatorFormula$OnTextSizeChangeListener;

.field private mPasteActionModeCallback:Landroid/view/ActionMode$Callback;

.field private final mStepTextSize:F

.field private final mTempPaint:Landroid/text/TextPaint;

.field private mWidthConstraint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/android/calculator2/CalculatorFormula;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/android/calculator2/CalculatorFormula;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calculator2/AlignedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorFormula;->mTempPaint:Landroid/text/TextPaint;

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/android/calculator2/CalculatorFormula;->mWidthConstraint:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    iput v0, p0, Lcom/android/calculator2/CalculatorFormula;->mCharWidth:F

    const-string v0, "clipboard"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/android/calculator2/CalculatorFormula;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 91
    sget-object v0, Lcom/android/calculator2/R$styleable;->CalculatorFormula:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 94
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getTextSize()F

    move-result p2

    .line 93
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/android/calculator2/CalculatorFormula;->mMaximumTextSize:F

    .line 96
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getTextSize()F

    move-result p2

    const/4 p3, 0x1

    .line 95
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/android/calculator2/CalculatorFormula;->mMinimumTextSize:F

    .line 97
    iget p2, p0, Lcom/android/calculator2/CalculatorFormula;->mMaximumTextSize:F

    iget p3, p0, Lcom/android/calculator2/CalculatorFormula;->mMinimumTextSize:F

    sub-float/2addr p2, p3

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p2, p3

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/android/calculator2/CalculatorFormula;->mStepTextSize:F

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorFormula;->setupActionMode()V

    .line 102
    new-instance p1, Lcom/android/calculator2/-$$Lambda$CalculatorFormula$Ps1PTmVl9-NomBngdvV0KuWdO50;

    invoke-direct {p1, p0}, Lcom/android/calculator2/-$$Lambda$CalculatorFormula$Ps1PTmVl9-NomBngdvV0KuWdO50;-><init>(Lcom/android/calculator2/CalculatorFormula;)V

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorFormula;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/calculator2/CalculatorFormula;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/calculator2/CalculatorFormula;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calculator2/CalculatorFormula;Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorFormula;->createContextMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/calculator2/CalculatorFormula;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorFormula;->isCopyEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lcom/android/calculator2/CalculatorFormula;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/calculator2/CalculatorFormula;->mContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method private copy()V
    .locals 5

    const-string v0, "copy_out"

    .line 390
    invoke-static {v0}, Lcom/android/calculator2/ZteTrackProxy;->sendEvent(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 392
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    .line 394
    :try_start_0
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getSelectionEnd()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1100d8

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 400
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private createContextMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 2

    .line 372
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorFormula;->isPasteEnabled()Z

    move-result v0

    .line 378
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorFormula;->bringPointIntoView(I)Z

    const p0, 0x7f0e0002

    .line 379
    invoke-virtual {p1, p0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p0, 0x7f0a0126

    .line 380
    invoke-interface {p2, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    .line 383
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 p0, 0x1

    return p0
.end method

.method private createContextMenu4RightMouseBtn(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 0

    .line 481
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    const/4 p0, 0x1

    return p0
.end method

.method private static getMaxDigitWidth(Landroid/text/TextPaint;)F
    .locals 4

    const-string v0, "0123456789"

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [F

    const-string v1, "0123456789"

    .line 118
    invoke-virtual {p0, v1, v0}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 120
    array-length p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget v3, v0, v2

    .line 121
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private isCopyEnabled()Z
    .locals 1

    .line 466
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMemoryEnabled()Z
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/android/calculator2/CalculatorFormula;->mOnDisplayMemoryOperationsListener:Lcom/android/calculator2/Calculator$OnDisplayMemoryOperationsListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/calculator2/CalculatorFormula;->mOnDisplayMemoryOperationsListener:Lcom/android/calculator2/Calculator$OnDisplayMemoryOperationsListener;

    .line 447
    invoke-interface {p0}, Lcom/android/calculator2/Calculator$OnDisplayMemoryOperationsListener;->shouldDisplayMemory()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPasteEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$new$0(Lcom/android/calculator2/CalculatorFormula;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p2, p1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorFormula;->showContextMenu4RightMouseBtn()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$setupContextMenu4RightMouseBtn$1(Lcom/android/calculator2/CalculatorFormula;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 487
    new-instance p2, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 488
    invoke-direct {p0, p2, p1}, Lcom/android/calculator2/CalculatorFormula;->createContextMenu4RightMouseBtn(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    .line 489
    iput-object p1, p0, Lcom/android/calculator2/CalculatorFormula;->mContextMenu:Landroid/view/ContextMenu;

    const/4 p2, 0x0

    .line 490
    :goto_0
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 491
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setupContextMenu4RightMouseBtn$2(Lcom/android/calculator2/CalculatorFormula;Landroid/view/View;)Z
    .locals 0

    .line 494
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->showContextMenu()Z

    move-result p0

    return p0
.end method

.method private paste()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/android/calculator2/CalculatorFormula;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/calculator2/CalculatorFormula;->mOnContextMenuClickListener:Lcom/android/calculator2/CalculatorFormula$OnFormulaContextMenuClickListener;

    if-eqz v1, :cond_0

    .line 407
    iget-object p0, p0, Lcom/android/calculator2/CalculatorFormula;->mOnContextMenuClickListener:Lcom/android/calculator2/CalculatorFormula$OnFormulaContextMenuClickListener;

    invoke-interface {p0, v0}, Lcom/android/calculator2/CalculatorFormula$OnFormulaContextMenuClickListener;->onPaste(Landroid/content/ClipData;)Z

    :cond_0
    return-void
.end method

.method private setTextSizeInternal(IFZ)V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getTextSize()F

    move-result v0

    .line 186
    invoke-super {p0, p1, p2}, Lcom/android/calculator2/AlignedTextView;->setTextSize(IF)V

    if-eqz p3, :cond_0

    .line 187
    iget-object p1, p0, Lcom/android/calculator2/CalculatorFormula;->mOnTextSizeChangeListener:Lcom/android/calculator2/CalculatorFormula$OnTextSizeChangeListener;

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/android/calculator2/CalculatorFormula;->mOnTextSizeChangeListener:Lcom/android/calculator2/CalculatorFormula$OnTextSizeChangeListener;

    invoke-interface {p1, p0, v0}, Lcom/android/calculator2/CalculatorFormula$OnTextSizeChangeListener;->onTextSizeChanged(Landroid/widget/TextView;F)V

    :cond_0
    return-void
.end method

.method private setupActionMode()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 287
    new-instance v0, Lcom/android/calculator2/CalculatorFormula$1;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorFormula$1;-><init>(Lcom/android/calculator2/CalculatorFormula;)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorFormula;->mPasteActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 343
    iget-object v0, p0, Lcom/android/calculator2/CalculatorFormula;->mPasteActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorFormula;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 344
    iget-object v0, p0, Lcom/android/calculator2/CalculatorFormula;->mPasteActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorFormula;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method private setupContextMenu()V
    .locals 1

    .line 351
    new-instance v0, Lcom/android/calculator2/CalculatorFormula$2;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorFormula$2;-><init>(Lcom/android/calculator2/CalculatorFormula;)V

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorFormula;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 363
    new-instance v0, Lcom/android/calculator2/CalculatorFormula$3;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorFormula$3;-><init>(Lcom/android/calculator2/CalculatorFormula;)V

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorFormula;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private setupContextMenu4RightMouseBtn()V
    .locals 1

    .line 486
    new-instance v0, Lcom/android/calculator2/-$$Lambda$CalculatorFormula$L8hClC5enCR9KhEoAaV9WWMxXVI;

    invoke-direct {v0, p0}, Lcom/android/calculator2/-$$Lambda$CalculatorFormula$L8hClC5enCR9KhEoAaV9WWMxXVI;-><init>(Lcom/android/calculator2/CalculatorFormula;)V

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorFormula;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 494
    new-instance v0, Lcom/android/calculator2/-$$Lambda$CalculatorFormula$IdfxvgH6tbqoKzWC2u31g0uJliw;

    invoke-direct {v0, p0}, Lcom/android/calculator2/-$$Lambda$CalculatorFormula$IdfxvgH6tbqoKzWC2u31g0uJliw;-><init>(Lcom/android/calculator2/CalculatorFormula;)V

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorFormula;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private showContextMenu4RightMouseBtn()V
    .locals 0

    .line 498
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorFormula;->setupContextMenu4RightMouseBtn()V

    return-void
.end method


# virtual methods
.method public changeTextTo(Ljava/lang/CharSequence;)V
    .locals 4

    .line 233
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, ","

    .line 234
    invoke-static {v1}, Lcom/android/calculator2/KeyMaps;->translateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 235
    invoke-static {p1, v0, v1}, Lcom/android/calculator2/StringUtils;->getExtensionIgnoring(Ljava/lang/CharSequence;Ljava/lang/CharSequence;C)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 237
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 240
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 241
    invoke-static {v0}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v1

    .line 242
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/calculator2/KeyMaps;->toDescriptiveString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorFormula;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorFormula;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorFormula;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorFormula;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 254
    :cond_3
    :goto_0
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Lcom/android/calculator2/CalculatorFormula;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public getMaxChars()I
    .locals 2

    .line 127
    iget v0, p0, Lcom/android/calculator2/CalculatorFormula;->mWidthConstraint:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/calculator2/CalculatorFormula;->mCharWidth:F

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getMinimumTextSize()F
    .locals 0

    .line 198
    iget p0, p0, Lcom/android/calculator2/CalculatorFormula;->mMinimumTextSize:F

    return p0
.end method

.method public getVariableTextSize(Ljava/lang/CharSequence;)F
    .locals 4

    .line 206
    iget v0, p0, Lcom/android/calculator2/CalculatorFormula;->mWidthConstraint:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/calculator2/CalculatorFormula;->mMaximumTextSize:F

    iget v1, p0, Lcom/android/calculator2/CalculatorFormula;->mMinimumTextSize:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_2

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/CalculatorFormula;->mTempPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 215
    iget v0, p0, Lcom/android/calculator2/CalculatorFormula;->mMinimumTextSize:F

    .line 216
    :goto_0
    iget v1, p0, Lcom/android/calculator2/CalculatorFormula;->mMaximumTextSize:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/calculator2/CalculatorFormula;->mTempPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calculator2/CalculatorFormula;->mStepTextSize:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/calculator2/CalculatorFormula;->mMaximumTextSize:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 218
    iget-object v1, p0, Lcom/android/calculator2/CalculatorFormula;->mTempPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    iget v2, p0, Lcom/android/calculator2/CalculatorFormula;->mWidthConstraint:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/calculator2/CalculatorFormula;->mTempPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    .line 208
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getTextSize()F

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 4

    const-string v0, "CalculatorFormula"

    const-string v1, "onMeasure."

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->isLaidOut()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 135
    iget v0, p0, Lcom/android/calculator2/CalculatorFormula;->mMaximumTextSize:F

    invoke-direct {p0, v1, v0, v1}, Lcom/android/calculator2/CalculatorFormula;->setTextSizeInternal(IFZ)V

    .line 137
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getLineHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getCompoundPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    .line 138
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getCompoundPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorFormula;->setMinimumHeight(I)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/android/calculator2/CalculatorFormula;->getMaxDigitWidth(Landroid/text/TextPaint;)F

    move-result v0

    .line 145
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 146
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getMinimumWidth()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 147
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorFormula;->setMinimumWidth(I)V

    .line 151
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 152
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/calculator2/CalculatorFormula;->mWidthConstraint:I

    .line 153
    iput v0, p0, Lcom/android/calculator2/CalculatorFormula;->mCharWidth:F

    .line 154
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorFormula;->getVariableTextSize(Ljava/lang/CharSequence;)F

    move-result v0

    .line 155
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getTextSize()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_2

    .line 156
    invoke-direct {p0, v1, v0, v1}, Lcom/android/calculator2/CalculatorFormula;->setTextSizeInternal(IFZ)V

    .line 159
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/calculator2/AlignedTextView;->onMeasure(II)V

    return-void
.end method

.method public onMemoryStateChanged()V
    .locals 1

    .line 442
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorFormula;->isPasteEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/calculator2/CalculatorFormula;->isMemoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorFormula;->setLongClickable(Z)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0123

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0126

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "CalculatorFormula"

    const-string v0, "Aaron: click paste."

    .line 428
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorFormula;->paste()V

    return v1

    :cond_1
    const-string p1, "CalculatorFormula"

    const-string v0, "Aaron: click copy."

    .line 418
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorFormula;->copy()V

    .line 420
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->isPcMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getSelectionEnd()I

    move-result p0

    invoke-interface {p1, v0, p0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 424
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return v1
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/calculator2/AlignedTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 181
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorFormula;->getVariableTextSize(Ljava/lang/CharSequence;)F

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/calculator2/CalculatorFormula;->setTextSize(IF)V

    return-void
.end method

.method public setOnContextMenuClickListener(Lcom/android/calculator2/CalculatorFormula$OnFormulaContextMenuClickListener;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/android/calculator2/CalculatorFormula;->mOnContextMenuClickListener:Lcom/android/calculator2/CalculatorFormula$OnFormulaContextMenuClickListener;

    return-void
.end method

.method public setOnDisplayMemoryOperationsListener(Lcom/android/calculator2/Calculator$OnDisplayMemoryOperationsListener;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/calculator2/CalculatorFormula;->mOnDisplayMemoryOperationsListener:Lcom/android/calculator2/Calculator$OnDisplayMemoryOperationsListener;

    return-void
.end method

.method public setOnTextSizeChangeListener(Lcom/android/calculator2/CalculatorFormula$OnTextSizeChangeListener;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/android/calculator2/CalculatorFormula;->mOnTextSizeChangeListener:Lcom/android/calculator2/CalculatorFormula$OnTextSizeChangeListener;

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    const/4 v0, 0x1

    .line 194
    invoke-direct {p0, p1, p2, v0}, Lcom/android/calculator2/CalculatorFormula;->setTextSizeInternal(IFZ)V

    return-void
.end method

.method public stopActionModeOrContextMenu()Z
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/calculator2/CalculatorFormula;->mActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 259
    iget-object p0, p0, Lcom/android/calculator2/CalculatorFormula;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    return v1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/CalculatorFormula;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_1

    .line 263
    iget-object p0, p0, Lcom/android/calculator2/CalculatorFormula;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {p0}, Landroid/view/ContextMenu;->close()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
