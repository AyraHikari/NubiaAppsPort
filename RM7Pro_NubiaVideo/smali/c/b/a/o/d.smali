.class public Lc/b/a/o/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lc/b/a/o/c$a;)Lc/b/a/o/c;
    .locals 1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lc/b/a/o/e;

    invoke-direct {v0, p1, p2}, Lc/b/a/o/e;-><init>(Landroid/content/Context;Lc/b/a/o/c$a;)V

    return-object v0

    .line 3
    :cond_1
    new-instance p1, Lc/b/a/o/i;

    invoke-direct {p1}, Lc/b/a/o/i;-><init>()V

    return-object p1
.end method
