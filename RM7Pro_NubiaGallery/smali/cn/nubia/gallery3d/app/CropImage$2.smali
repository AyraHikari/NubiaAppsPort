.class Lcn/nubia/gallery3d/app/CropImage$2;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    const v3, 0x7f1001da

    const/4 v4, 0x0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v0, v4}, Lcn/nubia/gallery3d/app/CropImage;->access$002(Lcn/nubia/gallery3d/app/CropImage;Z)Z

    .line 253
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v0, v4}, Lcn/nubia/gallery3d/app/CropImage;->access$102(Lcn/nubia/gallery3d/app/CropImage;Z)Z

    .line 254
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CropImage;->access$500(Lcn/nubia/gallery3d/app/CropImage;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 255
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CropImage;->access$600(Lcn/nubia/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CropImage;->access$600(Lcn/nubia/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 258
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-virtual {v0, v4}, Lcn/nubia/gallery3d/app/CropImage;->setResult(I)V

    .line 259
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    const v2, 0x7f1001d5

    .line 260
    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 262
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/CropImage;->finish()V

    .line 265
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v0, v4}, Lcn/nubia/gallery3d/app/CropImage;->access$002(Lcn/nubia/gallery3d/app/CropImage;Z)Z

    .line 266
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v0, v4}, Lcn/nubia/gallery3d/app/CropImage;->access$102(Lcn/nubia/gallery3d/app/CropImage;Z)Z

    .line 267
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CropImage;->access$500(Lcn/nubia/gallery3d/app/CropImage;)I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 268
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CropImage;->access$600(Lcn/nubia/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CropImage;->access$600(Lcn/nubia/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 271
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    const/4 v1, -0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/app/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 272
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 248
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/CropImage;->access$400(Lcn/nubia/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 244
    :cond_5
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$2;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/BitmapRegionDecoder;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/CropImage;->access$300(Lcn/nubia/gallery3d/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V

    :goto_0
    return-void
.end method
