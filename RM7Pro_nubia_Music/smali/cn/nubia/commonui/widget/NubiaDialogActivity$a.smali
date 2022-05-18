.class Lcn/nubia/commonui/widget/NubiaDialogActivity$a;
.super Ljava/lang/Object;
.source "NubiaDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaDialogActivity;

.field private b:I

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/widget/NubiaDialogActivity;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->a:Lcn/nubia/commonui/widget/NubiaDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 245
    const-string v0, "window"

    .line 246
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 247
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 249
    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->c:Z

    .line 251
    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 252
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->c:Z

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->c:Z

    if-eqz v0, :cond_2

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->b:I

    .line 256
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->c:Z

    if-eqz v0, :cond_3

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_2
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->d:I

    .line 258
    return-void

    :cond_1
    move v0, v2

    .line 249
    goto :goto_0

    .line 254
    :cond_2
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    .line 256
    :cond_3
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_2
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->c:Z

    return v0
.end method

.method static synthetic a(Lcn/nubia/commonui/widget/NubiaDialogActivity$a;)Z
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->a()Z

    move-result v0

    return v0
.end method

.method private b()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->b:I

    return v0
.end method

.method static synthetic b(Lcn/nubia/commonui/widget/NubiaDialogActivity$a;)I
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->b()I

    move-result v0

    return v0
.end method
