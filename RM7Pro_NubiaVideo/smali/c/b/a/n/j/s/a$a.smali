.class public Lc/b/a/n/j/s/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/j/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/j/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/j/m<",
        "Ljava/io/File;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lc/b/a/n/j/c;)Lc/b/a/n/j/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/n/j/c;",
            ")",
            "Lc/b/a/n/j/l<",
            "Ljava/io/File;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lc/b/a/n/j/s/a;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v0, v1}, Lc/b/a/n/j/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/n/j/l;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/b/a/n/j/s/a;-><init>(Lc/b/a/n/j/l;)V

    return-object p1
.end method

.method public b()V
    .locals 0

    return-void
.end method
