.class public Lc/b/a/b;
.super Lc/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lc/b/a/a<",
        "TModelType;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final F:Lc/b/a/n/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/j/l<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final G:Lc/b/a/n/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/j/l<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc/b/a/e;Lc/b/a/n/j/l;Lc/b/a/n/j/l;Lc/b/a/j$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/e<",
            "TModelType;***>;",
            "Lc/b/a/n/j/l<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lc/b/a/n/j/l<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lc/b/a/j$d;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p4, p1, Lc/b/a/e;->c:Lc/b/a/g;

    const-class v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {p4, p2, p3, v0, v1}, Lc/b/a/b;->H(Lc/b/a/g;Lc/b/a/n/j/l;Lc/b/a/n/j/l;Ljava/lang/Class;Lc/b/a/n/k/j/c;)Lc/b/a/q/e;

    move-result-object p4

    const-class v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, p4, v0, p1}, Lc/b/a/a;-><init>(Lc/b/a/q/f;Ljava/lang/Class;Lc/b/a/e;)V

    .line 2
    iput-object p2, p0, Lc/b/a/b;->F:Lc/b/a/n/j/l;

    .line 3
    iput-object p3, p0, Lc/b/a/b;->G:Lc/b/a/n/j/l;

    .line 4
    iget-object p1, p1, Lc/b/a/e;->c:Lc/b/a/g;

    return-void
.end method

.method private static H(Lc/b/a/g;Lc/b/a/n/j/l;Lc/b/a/n/j/l;Ljava/lang/Class;Lc/b/a/n/k/j/c;)Lc/b/a/q/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/g;",
            "Lc/b/a/n/j/l<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lc/b/a/n/j/l<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lc/b/a/n/k/j/c<",
            "Landroid/graphics/Bitmap;",
            "TR;>;)",
            "Lc/b/a/q/e<",
            "TA;",
            "Lc/b/a/n/j/g;",
            "Landroid/graphics/Bitmap;",
            "TR;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p4, :cond_1

    .line 1
    const-class p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p4, p3}, Lc/b/a/g;->f(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/n/k/j/c;

    move-result-object p4

    .line 2
    :cond_1
    const-class p3, Lc/b/a/n/j/g;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p3, v0}, Lc/b/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/q/b;

    move-result-object p0

    .line 3
    new-instance p3, Lc/b/a/n/j/f;

    invoke-direct {p3, p1, p2}, Lc/b/a/n/j/f;-><init>(Lc/b/a/n/j/l;Lc/b/a/n/j/l;)V

    .line 4
    new-instance p1, Lc/b/a/q/e;

    invoke-direct {p1, p3, p4, p0}, Lc/b/a/q/e;-><init>(Lc/b/a/n/j/l;Lc/b/a/n/k/j/c;Lc/b/a/q/b;)V

    return-object p1
.end method
