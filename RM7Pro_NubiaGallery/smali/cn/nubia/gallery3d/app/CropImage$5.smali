.class Lcn/nubia/gallery3d/app/CropImage$5;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CropImage;

.field final synthetic val$ios:Lcn/nubia/gallery3d/util/InterruptableOutputStream;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/InterruptableOutputStream;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$5;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/CropImage$5;->val$ios:Lcn/nubia/gallery3d/util/InterruptableOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 706
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$5;->val$ios:Lcn/nubia/gallery3d/util/InterruptableOutputStream;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/util/InterruptableOutputStream;->interrupt()V

    return-void
.end method
