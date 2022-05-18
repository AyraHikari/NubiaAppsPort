.class public Lcom/zte/mifavor/widget/ProgressDialog;
.super Lcom/zte/mifavor/widget/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private isSetProgressNumberFormat:Z

.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressStyle:I

    .line 85
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->initFormats()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressStyle:I

    .line 90
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->initFormats()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/ProgressDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/ProgressDialog;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/ProgressDialog;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->isSetProgressNumberFormat:Z

    return p0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/ProgressDialog;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/ProgressDialog;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object p0
.end method

.method private initFormats()V
    .locals 2

    const-string v0, "%1d/%2d"

    .line 122
    iput-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 123
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 124
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 125
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->isSetProgressNumberFormat:Z

    return-void
.end method

.method private onProgressChanged()V
    .locals 2

    .line 377
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/zte/mifavor/widget/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-static {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/zte/mifavor/widget/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/zte/mifavor/widget/ProgressDialog;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 100
    invoke-static/range {v0 .. v5}, Lcom/zte/mifavor/widget/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/zte/mifavor/widget/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/zte/mifavor/widget/ProgressDialog;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 105
    invoke-static/range {v0 .. v5}, Lcom/zte/mifavor/widget/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/zte/mifavor/widget/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/zte/mifavor/widget/ProgressDialog;
    .locals 1

    .line 111
    new-instance v0, Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v0, p2}, Lcom/zte/mifavor/widget/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v0, p3}, Lcom/zte/mifavor/widget/ProgressDialog;->setIndeterminate(Z)V

    .line 115
    invoke-virtual {v0, p4}, Lcom/zte/mifavor/widget/ProgressDialog;->setCancelable(Z)V

    .line 116
    invoke-virtual {v0, p5}, Lcom/zte/mifavor/widget/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 117
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/ProgressDialog;->show()V

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 267
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result p0

    return p0

    .line 269
    :cond_0
    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMax:I

    return p0
.end method

.method public getProgress()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 227
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p0

    return p0

    .line 229
    :cond_0
    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressVal:I

    return p0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 247
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result p0

    return p0

    .line 249
    :cond_0
    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mSecondaryProgressVal:I

    return p0
.end method

.method public incrementProgressBy(I)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 284
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 286
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementBy:I

    :goto_0
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 293
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 295
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementSecondaryBy:I

    :goto_0
    return-void
.end method

.method public isIndeterminate()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 317
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p0

    return p0

    .line 319
    :cond_0
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIndeterminate:Z

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 130
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/zte/extres/R$styleable;->AlertDialogMfv:[I

    sget v3, Lcom/zte/extres/R$attr;->alertDialogStyleMfv:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 134
    iget v2, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 139
    new-instance v2, Lcom/zte/mifavor/widget/ProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/ProgressDialog$1;-><init>(Lcom/zte/mifavor/widget/ProgressDialog;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 164
    sget v2, Lcom/zte/extres/R$styleable;->AlertDialogMfv_horizontalProgressLayout:I

    sget v3, Lcom/zte/extres/R$layout;->alert_dialog_progress:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x102000d

    .line 167
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 168
    sget v2, Lcom/zte/extres/R$id;->progress_number:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 169
    sget v2, Lcom/zte/extres/R$id;->progress_percent:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 170
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 172
    :cond_0
    sget v2, Lcom/zte/extres/R$styleable;->AlertDialogMfv_progressLayout:I

    sget v3, Lcom/zte/extres/R$layout;->progress_dialog:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 175
    sget v2, Lcom/zte/extres/R$id;->progress:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 176
    sget v2, Lcom/zte/extres/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 177
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->setView(Landroid/view/View;)V

    .line 179
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMax:I

    if-lez v0, :cond_1

    .line 181
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMax:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->setMax(I)V

    .line 183
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressVal:I

    if-lez v0, :cond_2

    .line 184
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->setProgress(I)V

    .line 186
    :cond_2
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v0, :cond_3

    .line 187
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->setSecondaryProgress(I)V

    .line 189
    :cond_3
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementBy:I

    if-lez v0, :cond_4

    .line 190
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->incrementProgressBy(I)V

    .line 192
    :cond_4
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v0, :cond_5

    .line 193
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 196
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 199
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :cond_7
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 202
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 204
    :cond_8
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->setIndeterminate(Z)V

    .line 205
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    .line 206
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget p1, Lcom/zte/extres/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ScrollView;

    .line 209
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingStart()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0, p1, v4, v0, v4}, Landroid/widget/ScrollView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 215
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStart()V

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 221
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStop()V

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 324
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 326
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIndeterminate:Z

    :goto_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 311
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 275
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 277
    :cond_0
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMax:I

    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 333
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 334
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    :cond_1
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x2

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 239
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 241
    :cond_1
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressVal:I

    :goto_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    const/4 p1, 0x1

    .line 358
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->isSetProgressNumberFormat:Z

    .line 359
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 373
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    .line 344
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressStyle:I

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x2

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 259
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 261
    :cond_1
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mSecondaryProgressVal:I

    :goto_0
    return-void
.end method
