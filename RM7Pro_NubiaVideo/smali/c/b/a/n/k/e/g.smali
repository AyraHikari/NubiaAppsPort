.class public Lc/b/a/n/k/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/q/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/q/b<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/e<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/b/a/n/k/e/h;

.field private final c:Lc/b/a/n/k/e/b;

.field private final d:Lc/b/a/n/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/b<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/n/k/g/c;

    new-instance v1, Lc/b/a/n/k/e/q;

    invoke-direct {v1, p1, p2}, Lc/b/a/n/k/e/q;-><init>(Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V

    invoke-direct {v0, v1}, Lc/b/a/n/k/g/c;-><init>(Lc/b/a/n/e;)V

    iput-object v0, p0, Lc/b/a/n/k/e/g;->a:Lc/b/a/n/e;

    .line 3
    new-instance v0, Lc/b/a/n/k/e/h;

    invoke-direct {v0, p1, p2}, Lc/b/a/n/k/e/h;-><init>(Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V

    iput-object v0, p0, Lc/b/a/n/k/e/g;->b:Lc/b/a/n/k/e/h;

    .line 4
    new-instance p1, Lc/b/a/n/k/e/b;

    invoke-direct {p1}, Lc/b/a/n/k/e/b;-><init>()V

    iput-object p1, p0, Lc/b/a/n/k/e/g;->c:Lc/b/a/n/k/e/b;

    .line 5
    invoke-static {}, Lc/b/a/n/k/a;->b()Lc/b/a/n/b;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/n/k/e/g;->d:Lc/b/a/n/b;

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/g;->a:Lc/b/a/n/e;

    return-object v0
.end method

.method public c()Lc/b/a/n/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/g;->c:Lc/b/a/n/k/e/b;

    return-object v0
.end method

.method public d()Lc/b/a/n/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/b<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/g;->d:Lc/b/a/n/b;

    return-object v0
.end method

.method public f()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/g;->b:Lc/b/a/n/k/e/h;

    return-object v0
.end method
