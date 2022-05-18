.class Lcn/nubia/camera/j$1;
.super Lcn/nubia/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/j;->b(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/ac/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/j;


# direct methods
.method constructor <init>(Lcn/nubia/camera/j;IIIILjava/lang/String;)V
    .locals 6

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/j$1;->a:Lcn/nubia/camera/j;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/a/c;-><init>(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 2

    .line 48
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "cn.nubia.wlancamera"

    const/16 v1, 0x80

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
