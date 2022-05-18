.class public Lcom/zte/mifavor/widget/LoadingToast;
.super Ljava/lang/Object;
.source "LoadingToast.java"


# static fields
.field public static final LENGTH_INDEFINITE:I = 0x2710

.field public static final LENGTH_LONG:I = 0xdac

.field public static final LENGTH_SHORT:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "LoadingToast"

.field private static mCToast:Lcom/zte/mifavor/widget/LoadingToast;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private mGravity:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field private mHorizontalMargin:F

.field private mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mShow:Ljava/lang/Runnable;

.field private mVerticalMargin:F

.field private mView:Landroid/view/View;

.field private mWM:Landroid/view/WindowManager;

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x51

    .line 26
    iput v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mGravity:I

    .line 34
    new-instance v0, Lcom/zte/mifavor/widget/LoadingToast$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/LoadingToast$1;-><init>(Lcom/zte/mifavor/widget/LoadingToast;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mShow:Ljava/lang/Runnable;

    .line 39
    new-instance v0, Lcom/zte/mifavor/widget/LoadingToast$2;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/LoadingToast$2;-><init>(Lcom/zte/mifavor/widget/LoadingToast;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHide:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/LoadingToast;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/LoadingToast;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/zte/mifavor/widget/LoadingToast;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/LoadingToast;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/zte/mifavor/widget/LoadingToast;->handleHide()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/mifavor/widget/LoadingToast;
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 52
    sget-object v0, Lcom/zte/mifavor/widget/LoadingToast;->mCToast:Lcom/zte/mifavor/widget/LoadingToast;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/zte/mifavor/widget/LoadingToast;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/LoadingToast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/mifavor/widget/LoadingToast;->mCToast:Lcom/zte/mifavor/widget/LoadingToast;

    .line 55
    :cond_0
    sget-object p0, Lcom/zte/mifavor/widget/LoadingToast;->mCToast:Lcom/zte/mifavor/widget/LoadingToast;

    return-object p0
.end method

.method private handleHide()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private handleShow()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mNextView:Landroid/view/View;

    if-eq v0, v1, :cond_2

    .line 246
    invoke-direct {p0}, Lcom/zte/mifavor/widget/LoadingToast;->handleHide()V

    .line 247
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mNextView:Landroid/view/View;

    iput-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mView:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 250
    iget v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mGravity:I

    .line 251
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 250
    invoke-static {v1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v1, v0, 0x7

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    .line 254
    iget-object v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_0
    const/16 v1, 0x70

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 260
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 261
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mVerticalMargin:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 262
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHorizontalMargin:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "LoadingToast"

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    .line 226
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 227
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x98

    .line 228
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 231
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    .line 232
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 233
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f6

    .line 234
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d6

    .line 236
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    const-string v1, "Toast"

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mWM:Landroid/view/WindowManager;

    const/4 p1, 0x0

    .line 241
    iput p1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mY:I

    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/zte/mifavor/widget/LoadingToast;
    .locals 3

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/zte/mifavor/widget/LoadingToast;->getInstance(Landroid/content/Context;)Lcom/zte/mifavor/widget/LoadingToast;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 63
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    .line 64
    sget v1, Lcom/zte/extres/R$layout;->transient_notification_loading_toast:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v1, 0x102000b

    .line 67
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/LoadingToast;->setView(Landroid/view/View;)V

    .line 70
    iput-object p0, v0, Lcom/zte/mifavor/widget/LoadingToast;->mNextView:Landroid/view/View;

    .line 71
    iput p2, v0, Lcom/zte/mifavor/widget/LoadingToast;->mDuration:I

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getDuration()I
    .locals 0

    .line 129
    iget p0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mDuration:I

    return p0
.end method

.method public getGravity()I
    .locals 0

    .line 189
    iget p0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mGravity:I

    return p0
.end method

.method public getHorizontalMargin()F
    .locals 0

    .line 160
    iget p0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHorizontalMargin:F

    return p0
.end method

.method public getVerticalMargin()F
    .locals 0

    .line 167
    iget p0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mVerticalMargin:F

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mNextView:Landroid/view/View;

    return-object p0
.end method

.method public getXOffset()I
    .locals 0

    .line 196
    iget p0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mX:I

    return p0
.end method

.method public getYOffset()I
    .locals 0

    .line 203
    iget p0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mY:I

    return p0
.end method

.method public setDuration(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mDuration:I

    return-void
.end method

.method public setGravity(III)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mGravity:I

    .line 178
    iput p2, p0, Lcom/zte/mifavor/widget/LoadingToast;->mX:I

    .line 179
    iput p3, p0, Lcom/zte/mifavor/widget/LoadingToast;->mY:I

    return-void
.end method

.method public setMargin(FF)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHorizontalMargin:F

    .line 153
    iput p2, p0, Lcom/zte/mifavor/widget/LoadingToast;->mVerticalMargin:F

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/LoadingToast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 96
    iget-object p0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mNextView:Landroid/view/View;

    const v0, 0x102000b

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This Toast was not created with Toast.makeText()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This Toast was not created with Toast.makeText()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mNextView:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iget-object v0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/mifavor/widget/LoadingToast;->mHide:Ljava/lang/Runnable;

    iget p0, p0, Lcom/zte/mifavor/widget/LoadingToast;->mDuration:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
