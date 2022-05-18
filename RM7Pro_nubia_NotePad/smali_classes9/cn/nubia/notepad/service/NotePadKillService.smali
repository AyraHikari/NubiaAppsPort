.class public Lcn/nubia/notepad/service/NotePadKillService;
.super Landroid/app/IntentService;
.source "NotePadKillService.java"


# instance fields
.field private final NOTEPAD_TYPE_UPDATE_DB:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 16
    const/16 v0, 0x3e8

    iput v0, p0, Lcn/nubia/notepad/service/NotePadKillService;->NOTEPAD_TYPE_UPDATE_DB:I

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 16
    const/16 v0, 0x3e8

    iput v0, p0, Lcn/nubia/notepad/service/NotePadKillService;->NOTEPAD_TYPE_UPDATE_DB:I

    .line 24
    return-void
.end method

.method private updataNotePadDB(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x0

    .line 52
    const-string v4, "noteId"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 53
    .local v1, "noteId":I
    if-ne v1, v5, :cond_0

    .line 76
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "title"

    const-string v5, "title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v4, "second_title"

    const-string v5, "second_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v4, "classify"

    const-string v5, "classify"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v4, "resource"

    const-string v5, "resource"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v4, "remind"

    const-string v5, "remind"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v4, "remind_time"

    const-string v5, "remind_time"

    invoke-virtual {p1, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    const-string v4, "mode"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v4, "extra_1"

    const-string v5, "extra_1"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string v4, "modify"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v4, "content"

    const-string v5, "content"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "modified"

    const-string v5, "modified"

    invoke-virtual {p1, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 68
    const-string v4, "top"

    const-string v5, "top"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    :try_start_0
    sget-object v4, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v1

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 72
    .local v2, "noteUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcn/nubia/notepad/service/NotePadKillService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 73
    .end local v2    # "noteUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 30
    const/4 v0, 0x2

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/notepad/service/NotePadKillService;->startForeground(ILandroid/app/Notification;)V

    .line 32
    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 39
    :pswitch_0
    invoke-direct {p0, p1}, Lcn/nubia/notepad/service/NotePadKillService;->updataNotePadDB(Landroid/content/Intent;)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/IntentService;->onTaskRemoved(Landroid/content/Intent;)V

    .line 49
    return-void
.end method
