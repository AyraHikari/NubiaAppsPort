.class Lcn/nubia/music/utils/GaussianBlur$a;
.super Lcn/nubia/music/utils/GaussianBlur$b;
.source "GaussianBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/utils/GaussianBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/music/utils/GaussianBlur$b",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/utils/GaussianBlur;


# direct methods
.method public constructor <init>(Lcn/nubia/music/utils/GaussianBlur;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcn/nubia/music/utils/GaussianBlur$a;->a:Lcn/nubia/music/utils/GaussianBlur;

    .line 156
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/utils/GaussianBlur$b;-><init>(Lcn/nubia/music/utils/GaussianBlur;Landroid/widget/ImageView;)V

    .line 157
    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcn/nubia/music/utils/GaussianBlur$a;->a:Lcn/nubia/music/utils/GaussianBlur;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/GaussianBlur;->render(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcn/nubia/music/utils/GaussianBlur$a;->a([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
