.class public Lc/b/a/n/j/s/c;
.super Lc/b/a/n/j/p;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/j/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/j/s/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/n/j/p<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Ljava/lang/Object<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/b/a/n/j/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/j/l<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lc/b/a/n/j/p;-><init>(Lc/b/a/n/j/l;)V

    return-void
.end method
