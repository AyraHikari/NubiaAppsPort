.class Lcn/nubia/camera/c$3;
.super Lcn/nubia/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/c;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcn/nubia/camera/c$3;->a:Lcn/nubia/camera/c;

    invoke-direct {p0}, Lcn/nubia/a/e;-><init>()V

    return-void
.end method

.method private c(Lcn/nubia/a/c;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 146
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/c$3;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->G()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private d(Lcn/nubia/a/c;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 154
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/c$3;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "wlancamera"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Lcn/nubia/a/c;)Z
    .locals 2

    .line 127
    invoke-virtual {p1}, Lcn/nubia/a/c;->a()I

    move-result v0

    sget-object v1, Lcn/nubia/camera/af/a;->L:Lcn/nubia/camera/af/a;

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 128
    invoke-direct {p0, p1}, Lcn/nubia/camera/c$3;->d(Lcn/nubia/a/c;)Z

    move-result p1

    return p1

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/a/c;->a()I

    move-result v0

    sget-object v1, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0, p1}, Lcn/nubia/camera/c$3;->c(Lcn/nubia/a/c;)Z

    move-result p1

    return p1

    .line 132
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/a/e;->a(Lcn/nubia/a/c;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/nubia/a/c;)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/c$3;->a:Lcn/nubia/camera/c;

    invoke-virtual {p1}, Lcn/nubia/a/c;->a()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/camera/af/a;->a(I)Lcn/nubia/camera/af/a;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c;->a(Lcn/nubia/camera/c;Lcn/nubia/camera/af/a;)Z

    const/4 p1, 0x1

    return p1
.end method
