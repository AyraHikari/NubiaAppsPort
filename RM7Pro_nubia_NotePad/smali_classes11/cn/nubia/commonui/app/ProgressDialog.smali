.class public Lcn/nubia/commonui/app/ProgressDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressStyle:I

    .line 78
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->initFormats()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressStyle:I

    .line 83
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->initFormats()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/ProgressDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/app/ProgressDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/ProgressDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/ProgressDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/app/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/ProgressDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/ProgressDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private initFormats()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 89
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 90
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 352
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/nubia/commonui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 99
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 104
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 110
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "dialog":Lcn/nubia/commonui/app/ProgressDialog;
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v0, p2}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v0, p3}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 114
    invoke-virtual {v0, p4}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 115
    invoke-virtual {v0, p5}, Lcn/nubia/commonui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 116
    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 117
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 242
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 257
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 266
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-virtual {p0}, Lcn/nubia/commonui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 123
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 128
    new-instance v2, Lcn/nubia/commonui/app/ProgressDialog$1;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/app/ProgressDialog$1;-><init>(Lcn/nubia/commonui/app/ProgressDialog;)V

    iput-object v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 154
    sget v2, Lcn/nubia/commonui/R$layout;->nubia_alert_dialog_progress:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 155
    .local v1, "view":Landroid/view/View;
    sget v2, Lcn/nubia/commonui/R$id;->progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 156
    sget v2, Lcn/nubia/commonui/R$id;->progress_number:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 157
    sget v2, Lcn/nubia/commonui/R$id;->progress_percent:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 158
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 165
    :goto_0
    iget v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMax:I

    if-lez v2, :cond_0

    .line 166
    iget v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMax:I

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setMax(I)V

    .line 168
    :cond_0
    iget v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressVal:I

    if-lez v2, :cond_1

    .line 169
    iget v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setProgress(I)V

    .line 171
    :cond_1
    iget v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v2, :cond_2

    .line 172
    iget v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 174
    :cond_2
    iget v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementBy:I

    if-lez v2, :cond_3

    .line 175
    iget v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->incrementProgressBy(I)V

    .line 177
    :cond_3
    iget v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v2, :cond_4

    .line 178
    iget v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 180
    :cond_4
    iget-object v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 181
    iget-object v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_5
    iget-object v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 184
    iget-object v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_6
    iget-object v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 187
    iget-object v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 189
    :cond_7
    iget-boolean v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 190
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    .line 191
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 192
    return-void

    .line 160
    .end local v1    # "view":Landroid/view/View;
    :cond_8
    sget v2, Lcn/nubia/commonui/R$layout;->nubia_progress_dialog:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 161
    .restart local v1    # "view":Landroid/view/View;
    sget v2, Lcn/nubia/commonui/R$id;->progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 162
    sget v2, Lcn/nubia/commonui/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 163
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStart()V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mHasStarted:Z

    .line 198
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStop()V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mHasStarted:Z

    .line 204
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 281
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 248
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iput p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 305
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 306
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 307
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 314
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 312
    :cond_1
    iput-object p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 207
    iget-boolean v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 209
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    iput p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 273
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 330
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    .line 331
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 342
    iput-object p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 343
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    .line 344
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 317
    iput p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressStyle:I

    .line 318
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 218
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iput p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method
