.class Lcom/android/gallery3d/filtershow/materials/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/materials/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/filtershow/materials/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/filtershow/materials/d;Lcom/android/gallery3d/filtershow/materials/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/materials/d$b;-><init>(Lcom/android/gallery3d/filtershow/materials/d;)V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/a;II)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lc/c/a/a;->g()V
    :try_end_0
    .catch Lc/c/a/e/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
