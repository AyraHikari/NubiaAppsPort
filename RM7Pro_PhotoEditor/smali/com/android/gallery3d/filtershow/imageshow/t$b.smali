.class Lcom/android/gallery3d/filtershow/imageshow/t$b;
.super Lcom/android/gallery3d/filtershow/words/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/imageshow/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public c:Z

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/filtershow/imageshow/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/words/a;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t$b;->c:Z

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t$b;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/filtershow/imageshow/t;Lcom/android/gallery3d/filtershow/imageshow/t$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t$b;-><init>(Lcom/android/gallery3d/filtershow/imageshow/t;)V

    return-void
.end method
