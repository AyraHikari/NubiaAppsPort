.class Lcom/android/gallery3d/filtershow/pipeline/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/g/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/pipeline/h;->b(Lcom/android/gallery3d/filtershow/pipeline/j$a;)Lcom/android/gallery3d/filtershow/pipeline/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/gallery3d/filtershow/pipeline/h;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/pipeline/h;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/h$a;->b:Lcom/android/gallery3d/filtershow/pipeline/h;

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/pipeline/h$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/h$d;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/pipeline/h$d;-><init>()V

    iput-object p1, v0, Lcom/android/gallery3d/filtershow/pipeline/h$d;->a:Landroid/net/Uri;

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/pipeline/h$a;->a:Z

    iput-boolean p1, v0, Lcom/android/gallery3d/filtershow/pipeline/h$d;->b:Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/h$a;->b:Lcom/android/gallery3d/filtershow/pipeline/h;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/pipeline/j;->i(Lcom/android/gallery3d/filtershow/pipeline/j$c;)V

    return-void
.end method
