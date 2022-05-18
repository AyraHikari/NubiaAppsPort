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
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressStyle:I

    .line 78
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->initFormats()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressStyle:I

    .line 83
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->initFormats()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/app/ProgressDialog;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/app/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object p0
.end method

.method private initFormats()V
    .locals 2

    const-string v0, "%1d/%2d"

    .line 87
    iput-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private onProgressChanged()V
    .locals 2

    .line 348
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-static {p0, p1, p2, v0}, Lcn/nubia/commonui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 99
    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 104
    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 2

    .line 110
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    const v1, 0x7f110129

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 111
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

    const p0, 0x7f060085

    .line 117
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/ProgressDialog;->setAnimPanelBackground(I)V

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 240
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0

    .line 243
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0

    .line 229
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressVal:I

    return v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    return v0

    .line 236
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mSecondaryProgressVal:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 258
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 260
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementBy:I

    :goto_0
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 267
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 269
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementSecondaryBy:I

    :goto_0
    return-void
.end method

.method public isIndeterminate()Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0

    .line 301
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIndeterminate:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 123
    invoke-virtual {p0}, Lcn/nubia/commonui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 124
    iget v1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressStyle:I

    const v2, 0x7f09012c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 129
    new-instance v1, Lcn/nubia/commonui/app/ProgressDialog$1;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/app/ProgressDialog$1;-><init>(Lcn/nubia/commonui/app/ProgressDialog;)V

    iput-object v1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const v1, 0x7f0c005b

    .line 155
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    const v1, 0x7f090130

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    const v1, 0x7f090131

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 159
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/ProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0060

    .line 161
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    const v1, 0x7f0900f0

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 166
    :goto_0
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMax:I

    if-lez v0, :cond_1

    .line 167
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/ProgressDialog;->setMax(I)V

    .line 169
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressVal:I

    if-lez v0, :cond_2

    .line 170
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/ProgressDialog;->setProgress(I)V

    .line 172
    :cond_2
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v0, :cond_3

    .line 173
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 175
    :cond_3
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementBy:I

    if-lez v0, :cond_4

    .line 176
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/ProgressDialog;->incrementProgressBy(I)V

    .line 178
    :cond_4
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v0, :cond_5

    .line 179
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 181
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 182
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_6
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 185
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_7
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 188
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 190
    :cond_8
    iget-boolean v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 191
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    .line 192
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 197
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStart()V

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 203
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStop()V

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 293
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIndeterminate:Z

    :goto_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 285
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 249
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 251
    :cond_0
    iput p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMax:I

    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 307
    iget v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 308
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 313
    :cond_1
    iput-object p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 210
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 212
    :cond_0
    iput p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressVal:I

    :goto_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 277
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 331
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 344
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    .line 318
    iput p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgressStyle:I

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcn/nubia/commonui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 219
    invoke-direct {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 221
    :cond_0
    iput p1, p0, Lcn/nubia/commonui/app/ProgressDialog;->mSecondaryProgressVal:I

    :goto_0
    return-void
.end method
