.class Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$4;
.super Ljava/lang/Object;
.source "AlertInCaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    .prologue
    .line 316
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$4;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    .line 321
    new-array v4, v11, [Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$4;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->access$200(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 322
    .local v4, "cusWhereArgs":[Ljava/lang/String;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "sign_color"

    aput-object v0, v2, v5

    const-string v0, "background_color"

    aput-object v0, v2, v11

    const-string v0, "image_path"

    aput-object v0, v2, v3

    .line 327
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 329
    .local v7, "customCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$4;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    .line 330
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/calendar/db/CustomCalendarProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "event_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 335
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x2

    .line 337
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    .local v10, "picturePath":Ljava/lang/String;
    :goto_0
    const/high16 v0, 0x43480000    # 200.0f

    const/high16 v1, 0x43480000    # 200.0f

    .line 340
    invoke-static {v10, v0, v1}, Lcn/nubia/calendar/util/PictureUtils;->getBitmapByPathForScale(Ljava/lang/String;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 342
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$4;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->pictureHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 343
    .local v9, "msg":Landroid/os/Message;
    iput-object v6, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$4;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->pictureHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "picturePath":Ljava/lang/String;
    :cond_0
    if-eqz v7, :cond_1

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 354
    :cond_1
    :goto_1
    return-void

    .line 336
    :cond_2
    const/4 v0, 0x2

    .line 338
    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    goto :goto_0

    .line 346
    :catch_0
    move-exception v8

    .line 347
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    if-eqz v7, :cond_1

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 349
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_3
    throw v0
.end method
