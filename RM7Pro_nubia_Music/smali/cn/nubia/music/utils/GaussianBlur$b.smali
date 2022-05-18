.class abstract Lcn/nubia/music/utils/GaussianBlur$b;
.super Landroid/os/AsyncTask;
.source "GaussianBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/utils/GaussianBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TT;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcn/nubia/music/utils/GaussianBlur;


# direct methods
.method public constructor <init>(Lcn/nubia/music/utils/GaussianBlur;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 172
    iput-object p1, p0, Lcn/nubia/music/utils/GaussianBlur$b;->b:Lcn/nubia/music/utils/GaussianBlur;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 173
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/utils/GaussianBlur$b;->a:Ljava/lang/ref/WeakReference;

    .line 174
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcn/nubia/music/utils/GaussianBlur$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lcn/nubia/music/utils/GaussianBlur$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcn/nubia/music/utils/GaussianBlur$b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
