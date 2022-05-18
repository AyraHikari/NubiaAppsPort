.class final Lcom/loc/p$b;
.super Ljava/lang/Object;
.source "HttpsDecisionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field protected a:Z

.field private b:I

.field private final c:Z

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/loc/p$b;->b:I

    iput-boolean v1, p0, Lcom/loc/p$b;->a:Z

    iput-boolean v1, p0, Lcom/loc/p$b;->c:Z

    iput-boolean v0, p0, Lcom/loc/p$b;->d:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/p$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/loc/p$b;->b:I

    if-gtz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/loc/p$b;->b:I

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/loc/p$b;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 5

    const/16 v4, 0x1c

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/loc/p$b;->d:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_3

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/loc/p$b;->a:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/loc/p$b;->b:I

    if-gtz v3, :cond_4

    move v3, v4

    :goto_1
    if-lt v3, v4, :cond_5

    move v3, v1

    :goto_2
    if-eqz v3, :cond_6

    :cond_0
    move v3, v1

    :goto_3
    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    move v0, v1

    :goto_4
    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/loc/p$b;->b:I

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/loc/p$b;->d:Z

    return-void
.end method
