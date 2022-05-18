.class Lcn/nubia/notepad/NotePadEditorActivity$16;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->buildTask(ILandroid/widget/ImageView;Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 2217
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->val$content:Ljava/lang/String;

    iput p3, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2220
    const/4 v0, 0x0

    .line 2221
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->val$content:Ljava/lang/String;

    .local v9, "picResourceFilePath":Ljava/lang/String;
    const-string v8, ""

    .line 2222
    .local v8, "picResourceFileName":Ljava/lang/String;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2223
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2224
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$100(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6}, Lcn/nubia/notepad/utils/Util;->calculateLongDiameterValue(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)I

    move-result v3

    .line 2225
    .local v3, "imageLongDiameter":I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_1

    .line 2226
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2228
    .local v4, "message":Landroid/os/Message;
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v10

    const-wide/16 v12, 0x2bc

    invoke-virtual {v10, v4, v12, v13}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2271
    .end local v4    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 2232
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$100(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v9, v10, v6}, Lcn/nubia/notepad/utils/Util;->imgCompress(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2234
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/2addr v10, v11

    const/4 v11, 0x4

    if-ge v10, v11, :cond_2

    .line 2235
    invoke-static {v0, v3}, Lcn/nubia/notepad/utils/Util;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2240
    :cond_2
    if-nez v0, :cond_4

    .line 2241
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2243
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v10

    const-wide/16 v12, 0x2bc

    invoke-virtual {v10, v4, v12, v13}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2237
    .end local v4    # "message":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 2238
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2240
    if-nez v0, :cond_4

    .line 2241
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2243
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v10

    const-wide/16 v12, 0x2bc

    invoke-virtual {v10, v4, v12, v13}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2240
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v4    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v10

    if-nez v0, :cond_3

    .line 2241
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2243
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v10

    const-wide/16 v12, 0x2bc

    invoke-virtual {v10, v4, v12, v13}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2246
    .end local v4    # "message":Landroid/os/Message;
    :cond_3
    throw v10

    .line 2247
    :cond_4
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v10, v10, Lcn/nubia/notepad/NotePadEditorActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    iget-object v11, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->val$content:Ljava/lang/String;

    invoke-virtual {v10, v11, v0}, Lcn/nubia/notepad/utils/ContentsData;->createImageData(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v8

    .line 2248
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v11, v11, Lcn/nubia/notepad/NotePadEditorActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    iget-object v11, v11, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2250
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 2251
    .local v5, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2252
    .local v1, "data":Landroid/os/Bundle;
    const-string v10, "picResourceFileName"

    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    const-string v10, "picResourceFilePath"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->val$content:Ljava/lang/String;

    invoke-static {v10}, Lcn/nubia/notepad/utils/Util;->getOrientation(Ljava/lang/String;)I

    move-result v7

    .line 2255
    .local v7, "orientation":I
    rem-int/lit16 v10, v7, 0xb4

    if-eqz v10, :cond_6

    .line 2256
    const-string v10, "bitmapHeight"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2257
    const-string v10, "bitmapWidth"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2262
    :goto_1
    const-string v10, "index"

    iget v11, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->val$index:I

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2263
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2264
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_5

    .line 2265
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2266
    const/4 v0, 0x0

    .line 2268
    :cond_5
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 2269
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$16;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2259
    :cond_6
    const-string v10, "bitmapHeight"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2260
    const-string v10, "bitmapWidth"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method
