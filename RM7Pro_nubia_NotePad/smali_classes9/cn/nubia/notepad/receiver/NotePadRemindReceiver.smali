.class public Lcn/nubia/notepad/receiver/NotePadRemindReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotePadRemindReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotePadRemindReceiver"


# instance fields
.field private am:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/receiver/NotePadRemindReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/receiver/NotePadRemindReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/receiver/NotePadRemindReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private createNotification(Landroid/content/Context;IJ)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "noteId"    # I
    .param p3, "time"    # J

    .prologue
    .line 158
    const-string v20, "notification"

    .line 159
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 160
    .local v16, "notificationManager":Landroid/app/NotificationManager;
    new-instance v13, Lcn/nubia/notepad/utils/NotesData;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcn/nubia/notepad/utils/NotesData;-><init>(Landroid/content/Context;)V

    .line 161
    .local v13, "notesData":Lcn/nubia/notepad/utils/NotesData;
    const v20, 0x7f0a0036

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 162
    .local v18, "title":Ljava/lang/String;
    const-string v11, ""

    .line 163
    .local v11, "message":Ljava/lang/String;
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcn/nubia/notepad/utils/NotesData;->getNoteTitleById(I)Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, "noteTitle":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 166
    move-object v11, v12

    .line 169
    :cond_0
    new-instance v15, Landroid/content/Intent;

    const-class v20, Lcn/nubia/notepad/NotePadEditorActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v15, "notificationIntent":Landroid/content/Intent;
    sget-object v20, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 173
    .local v19, "uri":Landroid/net/Uri;
    const/high16 v20, 0x4000000

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v20, "note_id"

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    invoke-virtual {v15, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 179
    const-string v20, "android.intent.action.RUN"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 182
    .local v17, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v10, 0x0

    .line 195
    .local v10, "mNotificationBuilder":Landroid/app/Notification$Builder;
    invoke-direct/range {p0 .. p1}, Lcn/nubia/notepad/receiver/NotePadRemindReceiver;->getLargerBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 196
    .local v9, "mBitmap":Landroid/graphics/Bitmap;
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x1a

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 197
    new-instance v20, Landroid/app/Notification$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 199
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    const-string v21, "Notify"

    .line 200
    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v20

    const-string v21, "40"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 201
    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 202
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    .line 203
    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    .line 204
    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    .line 205
    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    .line 206
    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 208
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcn/nubia/notepad/utils/Util;->createIconNotification(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_1
    :goto_0
    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    .line 241
    .local v14, "notification":Landroid/app/Notification;
    add-int/lit8 v20, p2, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 243
    invoke-static/range {p1 .. p1}, Lcn/nubia/notepad/utils/Util;->updateWidget(Landroid/content/Context;)V

    .line 244
    return-void

    .line 209
    .end local v14    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v8

    .line 210
    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 213
    .end local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    new-instance v7, Landroid/app/NotificationChannel;

    const-string v20, "android.intent.extra.CHANNEL_ID"

    const-string v21, "remind"

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v7, v0, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 214
    .local v7, "channel":Landroid/app/NotificationChannel;
    new-instance v20, Landroid/media/AudioAttributes$Builder;

    invoke-direct/range {v20 .. v20}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v20

    const/16 v21, 0x5

    .line 215
    invoke-virtual/range {v20 .. v21}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 216
    .local v4, "audioAttributes":Landroid/media/AudioAttributes;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 217
    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 218
    if-eqz v16, :cond_3

    .line 219
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 221
    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v5, "b":Landroid/os/Bundle;
    const-string v20, "nubiaSort"

    const-string v21, "Notify"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v20, Landroid/app/Notification$Builder;

    const-string v21, "remind_id"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    invoke-static/range {p1 .. p1}, Lcn/nubia/notepad/utils/Util;->createIconNotification(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 225
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 226
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 227
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 228
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v20

    const-string v21, "z0"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 229
    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 230
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    .line 231
    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    .line 232
    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x5

    .line 233
    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 234
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    .line 235
    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 236
    if-eqz v16, :cond_1

    .line 237
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto/16 :goto_0
.end method

.method private getLargerBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "mBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 130
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 132
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 137
    if-eqz v1, :cond_0

    .line 138
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :cond_0
    :goto_0
    return-object v2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    if-eqz v1, :cond_0

    .line 138
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 140
    :catch_2
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 137
    if-eqz v1, :cond_1

    .line 138
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 143
    :cond_1
    :goto_1
    throw v3

    .line 140
    :catch_3
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    const-string v20, "cn.nubia.notepad.action.REMIND_NOTIFY"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 60
    const-string v20, "note_id"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 61
    .local v14, "noteId":I
    const-string v20, "NotePadRemindReceiver"

    const-string v21, "handleIntent"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v16, Lcn/nubia/notepad/utils/NotesData;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcn/nubia/notepad/utils/NotesData;-><init>(Landroid/content/Context;)V

    .line 63
    .local v16, "notesData":Lcn/nubia/notepad/utils/NotesData;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v14, v2, v3}, Lcn/nubia/notepad/receiver/NotePadRemindReceiver;->createNotification(Landroid/content/Context;IJ)V

    .line 64
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcn/nubia/notepad/utils/NotesData;->updateNoteDateForRemind(IZ)V

    .line 66
    const-string v20, "power"

    .line 67
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    .line 68
    .local v17, "pm":Landroid/os/PowerManager;
    const v20, 0x10000006

    const-string v21, "silmpleTimer"

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    .line 70
    .local v12, "mWakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v20, 0x2710

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 72
    const-string v20, "activity"

    .line 73
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/notepad/receiver/NotePadRemindReceiver;->am:Landroid/app/ActivityManager;

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/receiver/NotePadRemindReceiver;->am:Landroid/app/ActivityManager;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 76
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 77
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 78
    .local v8, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 78
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 80
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcn/nubia/notepad/SysApplication;->exit()V

    .line 124
    .end local v8    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v12    # "mWakeLock":Landroid/os/PowerManager$WakeLock;
    .end local v14    # "noteId":I
    .end local v16    # "notesData":Lcn/nubia/notepad/utils/NotesData;
    .end local v17    # "pm":Landroid/os/PowerManager;
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v20, "android.intent.action.BOOT_COMPLETED"

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    .line 83
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 85
    new-instance v16, Lcn/nubia/notepad/utils/NotesData;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcn/nubia/notepad/utils/NotesData;-><init>(Landroid/content/Context;)V

    .line 86
    .restart local v16    # "notesData":Lcn/nubia/notepad/utils/NotesData;
    const-string v20, ""

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/utils/NotesData;->getNotesData(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v15

    .line 87
    .local v15, "noteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;>;"
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_5

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 89
    .local v6, "currentTime":J
    const-wide/16 v18, 0x0

    .line 90
    .local v18, "remindTime":J
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .line 91
    .local v13, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    iget-wide v0, v13, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->remindTime:J

    move-wide/from16 v18, v0

    .line 92
    iget-boolean v0, v13, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 93
    cmp-long v21, v18, v6

    if-lez v21, :cond_3

    .line 94
    iget v0, v13, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->id:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/notepad/utils/Util;->setRemindAlarm(Landroid/content/Context;JI)V

    goto :goto_1

    .line 96
    :cond_3
    iget v0, v13, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->id:I

    move/from16 v21, v0

    iget-wide v0, v13, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->remindTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/notepad/receiver/NotePadRemindReceiver;->createNotification(Landroid/content/Context;IJ)V

    .line 97
    iget v0, v13, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->id:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/utils/NotesData;->updateNoteDateForRemind(IZ)V

    goto :goto_1

    .line 101
    .end local v13    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 102
    const/4 v15, 0x0

    .line 104
    .end local v6    # "currentTime":J
    .end local v18    # "remindTime":J
    :cond_5
    const/4 v9, 0x0

    .line 105
    .local v9, "isNotePadRunning":Z
    const-string v20, "activity"

    .line 106
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/notepad/receiver/NotePadRemindReceiver;->am:Landroid/app/ActivityManager;

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/receiver/NotePadRemindReceiver;->am:Landroid/app/ActivityManager;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 108
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v11, "cn.nubia.notepad.preset"

    .line 109
    .local v11, "mPackageName":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 110
    .restart local v8    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    iget-object v0, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    .line 111
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 113
    :cond_7
    const/4 v9, 0x1

    .line 117
    .end local v8    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_8
    const-string v20, "NotePadRemindReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isNotePadRunning : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-nez v9, :cond_0

    .line 119
    invoke-direct/range {p0 .. p0}, Lcn/nubia/notepad/receiver/NotePadRemindReceiver;->killSelfProcess()V

    goto/16 :goto_0

    .line 121
    .end local v9    # "isNotePadRunning":Z
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v11    # "mPackageName":Ljava/lang/String;
    .end local v15    # "noteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;>;"
    .end local v16    # "notesData":Lcn/nubia/notepad/utils/NotesData;
    :cond_9
    const-string v20, "com.nubia.themechanged"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 122
    invoke-static {}, Lcn/nubia/notepad/utils/ThemeDescription;->getInstance()Lcn/nubia/notepad/utils/ThemeDescription;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcn/nubia/notepad/utils/ThemeDescription;->cleanUp()V

    goto/16 :goto_0
.end method

.method private killSelfProcess()V
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 149
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 150
    return-void
.end method

.method private setClearedIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "notification click"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    const-string v0, "NotePadRemindReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/nubia/notepad/receiver/NotePadRemindReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/notepad/receiver/NotePadRemindReceiver$1;-><init>(Lcn/nubia/notepad/receiver/NotePadRemindReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
