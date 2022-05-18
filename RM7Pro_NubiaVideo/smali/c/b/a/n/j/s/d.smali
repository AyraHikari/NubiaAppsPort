.class public Lc/b/a/n/j/s/d;
.super Lc/b/a/n/j/q;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/j/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/j/s/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/n/j/q<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Ljava/lang/Object<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/b/a/n/j/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/n/j/l<",
            "Lc/b/a/n/j/d;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lc/b/a/n/j/q;-><init>(Landroid/content/Context;Lc/b/a/n/j/l;)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/content/Context;Ljava/lang/String;)Lc/b/a/n/h/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lc/b/a/n/h/c<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/n/h/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lc/b/a/n/h/d;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method protected c(Landroid/content/Context;Landroid/net/Uri;)Lc/b/a/n/h/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lc/b/a/n/h/c<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/n/h/e;

    invoke-direct {v0, p1, p2}, Lc/b/a/n/h/e;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method
