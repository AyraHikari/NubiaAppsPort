.class public Lcn/nubia/notepad/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final DEFAULT_NAVIGATION_KEY_EXIST:Ljava/lang/String; = "0"

.field public static final LEFT_AND_RIGHT_HAND_SWITCH_URI:Landroid/net/Uri;

.field private static final LEFT_RIGHT_USE:Ljava/lang/String; = "single_hand_common_use"

.field private static final MAX_CACHE_SHARE_IMG:I = 0x1e

.field public static final NAVIGATION_BAR_OPEN_KEY:Ljava/lang/String; = "system_keys_navigationbar"

.field private static final SINGLE_HAND_KEY:Ljava/lang/String; = "single_reverse_switch"

.field public static final SINGLE_REVERSE_SWITCH_URI:Landroid/net/Uri;

.field private static final SUPPORT_NAVIGATION_BAR:Ljava/lang/String; = "qemu.hw.mainkeys"

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static final ZTE_SHARE:Ljava/lang/String; = "com.zte.cn.zteshare"

.field private static mLastSyncTime:J

.field private static mNoteShareFile:Ljava/io/File;

.field private static mRestore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "single_reverse_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/notepad/utils/Util;->SINGLE_REVERSE_SWITCH_URI:Landroid/net/Uri;

    .line 85
    const-string v0, "single_hand_common_use"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/notepad/utils/Util;->LEFT_AND_RIGHT_HAND_SWITCH_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-static {p0}, Lcn/nubia/notepad/utils/Util;->updatePresetClassify(Landroid/content/Context;)V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 230
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 231
    .local v3, "width":I
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 232
    .local v0, "height":I
    const/4 v2, 0x1

    .line 233
    .local v2, "inSampleSize":I
    if-gt v3, p1, :cond_0

    if-le v0, p2, :cond_1

    .line 234
    :cond_0
    int-to-float v5, v3

    mul-float/2addr v5, v7

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 235
    .local v4, "widthRadio":I
    int-to-float v5, v0

    mul-float/2addr v5, v7

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 236
    .local v1, "heightRadio":I
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 238
    .end local v1    # "heightRadio":I
    .end local v4    # "widthRadio":I
    :cond_1
    div-int/lit8 v5, v2, 0x2

    return v5
.end method

.method public static calculateInSampleSize(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 784
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 785
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static calculateLongDiameterValue(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 243
    if-nez p0, :cond_0

    .line 244
    const/4 v3, -0x1

    .line 251
    :goto_0
    return v3

    .line 246
    :cond_0
    const/4 v2, 0x0

    .local v2, "imgWidth":I
    const/4 v1, 0x0

    .line 247
    .local v1, "imgHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 249
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 250
    int-to-float v3, v2

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 251
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0
.end method

.method public static cancelRemindAlarm(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noteId"    # I

    .prologue
    .line 311
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 312
    invoke-static {p0, p1}, Lcn/nubia/notepad/utils/Util;->getNotifyPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 313
    .local v2, "pi":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    .line 314
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 315
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 316
    const-string v3, "notification"

    .line 317
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 318
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 320
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public static closeInputMethod(Landroid/app/Activity;)V
    .locals 5
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x2

    .line 823
    if-nez p0, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    const-string v3, "input_method"

    .line 826
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 827
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    .line 828
    .local v2, "isOpen":Z
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 829
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    .line 830
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 829
    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    .line 832
    .local v0, "closeResult":Z
    if-nez v0, :cond_0

    .line 833
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method public static compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v10, 0x64

    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 133
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 135
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 137
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p0, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 138
    const/16 v7, 0x64

    .line 139
    .local v7, "options":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    array-length v8, v8

    div-int/lit16 v8, v8, 0x400

    if-le v8, v10, :cond_2

    .line 140
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 141
    add-int/lit8 v7, v7, -0x14

    .line 142
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v8, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 146
    .end local v7    # "options":I
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 147
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v6, "e1":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 151
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 152
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 157
    :cond_0
    :goto_2
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 158
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    const/4 p0, 0x0

    .line 162
    .end local v6    # "e1":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-object v4

    .line 144
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "options":I
    :cond_2
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_5
    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v4

    .line 150
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 151
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 152
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 157
    :cond_3
    :goto_4
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_6

    .line 158
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    const/4 p0, 0x0

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 154
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v5

    .line 155
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 154
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "options":I
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 155
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 149
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 150
    :goto_5
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 151
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 152
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 157
    :cond_4
    :goto_6
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_5

    .line 158
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    const/4 p0, 0x0

    .line 161
    :cond_5
    throw v8

    .line 154
    :catch_3
    move-exception v5

    .line 155
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 149
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "options":I
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 146
    .end local v7    # "options":I
    :catch_4
    move-exception v6

    goto :goto_1

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "options":I
    :catch_5
    move-exception v6

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_6
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method public static createIconNotification(Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v9, 0x7f02006c

    .line 1175
    const/4 v4, 0x0

    .line 1176
    .local v4, "reIcon":Landroid/graphics/drawable/Icon;
    invoke-static {}, Lcn/nubia/notepad/utils/ThemeDescription;->getInstance()Lcn/nubia/notepad/utils/ThemeDescription;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/notepad/utils/ThemeDescription;->isDefaultTheme()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1177
    invoke-static {p0, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 1178
    const-string v7, "Util"

    const-string v8, "createIconNotification 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 1204
    .end local v4    # "reIcon":Landroid/graphics/drawable/Icon;
    .local v5, "reIcon":Landroid/graphics/drawable/Icon;
    :goto_0
    return-object v5

    .line 1181
    .end local v5    # "reIcon":Landroid/graphics/drawable/Icon;
    .restart local v4    # "reIcon":Landroid/graphics/drawable/Icon;
    :cond_0
    const/4 v6, 0x0

    .line 1182
    .local v6, "rtDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 1183
    .local v3, "reBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1185
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v7, "Util"

    const-string v8, "createIconNotification 2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1187
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1188
    const-string v7, "Util"

    const-string v8, "createIconNotification 3"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v6, :cond_1

    .line 1193
    const-string v7, "Util"

    const-string v8, "createIconNotification 4"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1196
    :cond_1
    if-eqz v3, :cond_2

    .line 1197
    const-string v7, "Util"

    const-string v8, "createIconNotification 5"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-static {v3}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    :goto_2
    move-object v5, v4

    .line 1204
    .end local v4    # "reIcon":Landroid/graphics/drawable/Icon;
    .restart local v5    # "reIcon":Landroid/graphics/drawable/Icon;
    goto :goto_0

    .line 1189
    .end local v5    # "reIcon":Landroid/graphics/drawable/Icon;
    .restart local v4    # "reIcon":Landroid/graphics/drawable/Icon;
    .restart local v6    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 1190
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1200
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string v7, "Util"

    const-string v8, "createIconNotification 6"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-static {p0, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    goto :goto_2
.end method

.method public static createImageBitmap(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isNeedResize"    # Z

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    .line 199
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 200
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 201
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 203
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 204
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 205
    .local v5, "picWidth":I
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 206
    .local v4, "picHeight":I
    const/4 v7, 0x0

    .line 207
    .local v7, "reqWidth":I
    const/4 v6, 0x0

    .line 208
    .local v6, "reqHeight":I
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v5, v8, :cond_0

    .line 209
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 210
    int-to-float v8, v7

    int-to-float v9, v4

    int-to-float v10, v5

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v6, v8

    .line 215
    :goto_0
    invoke-static {v3, v7, v6}, Lcn/nubia/notepad/utils/Util;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v8

    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 217
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 218
    const/4 v8, 0x0

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 219
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 220
    .local v1, "bitmapTemp":Landroid/graphics/Bitmap;
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v1, v8}, Lcn/nubia/notepad/utils/Util;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    .end local v1    # "bitmapTemp":Landroid/graphics/Bitmap;
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "picHeight":I
    .end local v5    # "picWidth":I
    .end local v6    # "reqHeight":I
    .end local v7    # "reqWidth":I
    :goto_1
    return-object v0

    .line 212
    .restart local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "picHeight":I
    .restart local v5    # "picWidth":I
    .restart local v6    # "reqHeight":I
    .restart local v7    # "reqWidth":I
    :cond_0
    move v7, v5

    .line 213
    move v6, v4

    goto :goto_0

    .line 222
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "picHeight":I
    .end local v5    # "picWidth":I
    .end local v6    # "reqHeight":I
    .end local v7    # "reqWidth":I
    :cond_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static createShareBitmap(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    .line 333
    const/4 v5, 0x0

    .line 334
    .local v5, "fgBitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 335
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    .line 372
    :goto_0
    return-object v10

    .line 339
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 340
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 341
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 342
    .local v9, "width":I
    const/4 v7, 0x0

    .line 344
    .local v7, "height":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v8, v10, :cond_1

    .line 345
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v7, v10

    .line 346
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 347
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 351
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v7, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 353
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 354
    .local v6, "fgCanvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 355
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 356
    invoke-static {v9, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 358
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0079

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 360
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v5, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 367
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    const/4 v5, 0x0

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "fgCanvas":Landroid/graphics/Canvas;
    :cond_2
    :goto_2
    move-object v10, v0

    .line 372
    goto :goto_0

    .line 362
    :catch_0
    move-exception v4

    .line 363
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a009d

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    .line 364
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 367
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    const/4 v5, 0x0

    goto :goto_2

    .line 366
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v10

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_3

    .line 367
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    const/4 v5, 0x0

    .line 370
    :cond_3
    throw v10
.end method

.method public static getBitmapByView(Landroid/widget/ScrollView;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "scrollView"    # Landroid/widget/ScrollView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 765
    const/4 v2, 0x0

    .line 766
    .local v2, "h":I
    const/4 v0, 0x0

    .line 767
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 768
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 767
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 770
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_1

    .line 771
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 777
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 778
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 779
    return-object v0

    .line 774
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static getDateStr(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 658
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 660
    .local v1, "day":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 661
    .local v3, "nowDay":Ljava/util/Date;
    invoke-static {p1, p2}, Lcn/nubia/notepad/utils/Util;->isYesterday(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 662
    const v4, 0x7f0a00ab

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "date":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 663
    .end local v0    # "date":Ljava/lang/String;
    :cond_0
    invoke-static {p1, p2}, Lcn/nubia/notepad/utils/Util;->isToday(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 664
    const v4, 0x7f0a00a6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "date":Ljava/lang/String;
    goto :goto_0

    .line 665
    .end local v0    # "date":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 666
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 667
    .local v2, "df":Ljava/text/DateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .restart local v0    # "date":Ljava/lang/String;
    goto :goto_0

    .line 670
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "df":Ljava/text/DateFormat;
    :cond_2
    const/high16 v4, 0x10000

    invoke-static {p0, p1, p2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "date":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDateTimeStr(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 683
    invoke-static {p0, p1, p2}, Lcn/nubia/notepad/utils/Util;->getDateStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "dateStr":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    invoke-static {p0, p1, p2}, Lcn/nubia/notepad/utils/Util;->getTimeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 688
    :cond_0
    return-object v0
.end method

.method public static getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    const/4 v12, 0x0

    .line 561
    const/4 v7, 0x0

    .line 563
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 564
    .local v9, "filePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 567
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    const-string v0, "Util"

    const-string v1, "getImageContentUri: --1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 571
    .local v10, "id":I
    const-string v0, "content://media/external/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 572
    .local v6, "baseUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 587
    if-eqz v7, :cond_0

    .line 588
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 591
    .end local v6    # "baseUri":Landroid/net/Uri;
    .end local v9    # "filePath":Ljava/lang/String;
    .end local v10    # "id":I
    :cond_0
    :goto_0
    return-object v0

    .line 574
    .restart local v9    # "filePath":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    const-string v0, "Util"

    const-string v1, "getImageContentUri: --2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 577
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v11, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 587
    if-eqz v7, :cond_0

    .line 588
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 587
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_2
    if-eqz v7, :cond_3

    .line 588
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v12

    .line 580
    goto :goto_0

    .line 583
    .end local v9    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 584
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "Util"

    const-string v1, "getImageContentUri: --3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 587
    if-eqz v7, :cond_4

    .line 588
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v12

    .line 591
    goto :goto_0

    .line 587
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 588
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 590
    :cond_5
    throw v0
.end method

.method public static getKeyFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1028
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    :cond_0
    const-string p0, ""

    .line 1031
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLabelByCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcn/nubia/notepad/utils/NotesLabelData;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 969
    new-instance v0, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-direct {v0}, Lcn/nubia/notepad/utils/NotesLabelData;-><init>()V

    .line 970
    .local v0, "entry":Lcn/nubia/notepad/utils/NotesLabelData;
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 971
    .local v1, "id":I
    invoke-virtual {v0, v1}, Lcn/nubia/notepad/utils/NotesLabelData;->setmId(I)V

    .line 975
    const-string v3, "title"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 976
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 977
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 978
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 986
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Lcn/nubia/notepad/utils/NotesLabelData;->setmTitle(Ljava/lang/String;)V

    .line 988
    return-object v0

    .line 979
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0101

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 980
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 981
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 982
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0102

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 983
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 984
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLastSyncTime()J
    .locals 2

    .prologue
    .line 706
    sget-wide v0, Lcn/nubia/notepad/utils/Util;->mLastSyncTime:J

    return-wide v0
.end method

.method public static getNavigationHeight(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1108
    const/4 v3, -0x1

    .line 1110
    .local v3, "navigationHeight":I
    :try_start_0
    const-string v7, "com.android.internal.R$dimen"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1111
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 1112
    .local v4, "object":Ljava/lang/Object;
    const-string v7, "navigation_bar_height"

    .line 1113
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1112
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1114
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1118
    .local v6, "resources":Landroid/content/res/Resources;
    const-string v7, "navigation_bar_height"

    const-string v8, "dimen"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1120
    .local v5, "resourceId":I
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "height":I
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "resourceId":I
    .end local v6    # "resources":Landroid/content/res/Resources;
    :goto_0
    return v3

    .line 1121
    :catch_0
    move-exception v1

    .line 1122
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNavigationStatus(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1132
    const/4 v0, 0x0

    .line 1133
    .local v0, "navigation":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "system_keys_navigationbar"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1134
    .local v1, "open":I
    if-nez v1, :cond_1

    .line 1135
    const/4 v0, 0x0

    .line 1139
    :cond_0
    :goto_0
    return v0

    .line 1136
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1137
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getNotifyPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noteId"    # I

    .prologue
    const/4 v2, 0x0

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/notepad/receiver/NotePadRemindReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    .local v0, "inten":Landroid/content/Intent;
    const-string v1, "cn.nubia.notepad.action.REMIND_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v1, "note_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 1064
    const/4 v3, -0x1

    .line 1066
    .local v3, "orientation":I
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1067
    .local v2, "exif":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1071
    .end local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    const/4 v0, 0x0

    .line 1072
    .local v0, "degree":I
    if-eq v3, v6, :cond_0

    .line 1073
    packed-switch v3, :pswitch_data_0

    .line 1084
    :pswitch_0
    const/4 v0, 0x0

    .line 1088
    :cond_0
    :goto_1
    return v0

    .line 1068
    .end local v0    # "degree":I
    :catch_0
    move-exception v1

    .line 1069
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1075
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "degree":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 1076
    goto :goto_1

    .line 1078
    :pswitch_2
    const/16 v0, 0xb4

    .line 1079
    goto :goto_1

    .line 1081
    :pswitch_3
    const/16 v0, 0x10e

    .line 1082
    goto :goto_1

    .line 1073
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 800
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 803
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 805
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 807
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 809
    .local v8, "index":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 814
    if-eqz v6, :cond_0

    .line 815
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 816
    const/4 v6, 0x0

    .line 819
    .end local v8    # "index":I
    :cond_0
    :goto_0
    return-object v0

    .line 814
    :cond_1
    if-eqz v6, :cond_2

    .line 815
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 816
    const/4 v6, 0x0

    :cond_2
    :goto_1
    move-object v0, v9

    .line 819
    goto :goto_0

    .line 811
    :catch_0
    move-exception v7

    .line 812
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    if-eqz v6, :cond_2

    .line 815
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 816
    const/4 v6, 0x0

    goto :goto_1

    .line 814
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 815
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 816
    const/4 v6, 0x0

    .line 818
    :cond_3
    throw v0
.end method

.method public static getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 789
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "path":Ljava/lang/String;
    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    invoke-static {p0, p1}, Lcn/nubia/notepad/utils/Util;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 795
    :goto_0
    return-object v1

    .line 792
    :cond_0
    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 795
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 542
    const/4 v7, 0x0

    .line 544
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 545
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 546
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 547
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 548
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 553
    if-eqz v7, :cond_0

    .line 554
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 551
    .end local v2    # "proj":[Ljava/lang/String;
    .end local v6    # "column_index":I
    :cond_0
    :goto_0
    return-object v0

    .line 549
    :catch_0
    move-exception v8

    .line 550
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    if-eqz v7, :cond_1

    .line 554
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    .line 551
    goto :goto_0

    .line 553
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 554
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_2
    throw v0
.end method

.method public static getRemindTime(Landroid/content/Context;Ljava/lang/String;[IJ)J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noteId"    # Ljava/lang/String;
    .param p2, "time"    # [I
    .param p3, "remindTime"    # J

    .prologue
    const/4 v6, 0x0

    .line 281
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 282
    .local v0, "ca":Ljava/util/Calendar;
    aget v1, p2, v6

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v4, p2, v4

    const/4 v5, 0x4

    aget v5, p2, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 284
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0095

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 292
    :goto_0
    return-wide p3

    .line 289
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    goto :goto_0
.end method

.method public static getRestoreStatuas()Z
    .locals 1

    .prologue
    .line 714
    sget-boolean v0, Lcn/nubia/notepad/utils/Util;->mRestore:Z

    return v0
.end method

.method public static getShareImagePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 726
    sget-object v0, Lcn/nubia/notepad/utils/Util;->mNoteShareFile:Ljava/io/File;

    if-eqz v0, :cond_0

    if-nez p0, :cond_2

    .line 727
    :cond_0
    const-string v6, ""

    .line 760
    :cond_1
    :goto_0
    return-object v6

    .line 729
    :cond_2
    const-string v6, ""

    .line 730
    .local v6, "ImagePath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 731
    .local v8, "cursor":Landroid/database/Cursor;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_5

    .line 733
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/external/file"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v13, Lcn/nubia/notepad/utils/Util;->mNoteShareFile:Ljava/io/File;

    .line 735
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    .line 733
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 736
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 737
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 738
    .local v10, "id":I
    const-string v0, "content://media/external/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 739
    .local v7, "baseUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 753
    .end local v7    # "baseUri":Landroid/net/Uri;
    .end local v10    # "id":I
    :goto_1
    if-eqz v8, :cond_1

    .line 754
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 755
    const/4 v8, 0x0

    goto :goto_0

    .line 741
    :cond_3
    :try_start_1
    sget-object v0, Lcn/nubia/notepad/utils/Util;->mNoteShareFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 742
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 743
    .local v12, "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    sget-object v1, Lcn/nubia/notepad/utils/Util;->mNoteShareFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/external/file"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 745
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 746
    goto :goto_1

    .line 747
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_4
    const-string v6, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 750
    :catch_0
    move-exception v9

    .line 751
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    if-eqz v8, :cond_1

    .line 754
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 755
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 753
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 754
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 755
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 760
    :cond_5
    sget-object v0, Lcn/nubia/notepad/utils/Util;->mNoteShareFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static getTimeStr(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 677
    .line 678
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 677
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 679
    .local v0, "df":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVersionCode()I
    .locals 3

    .prologue
    .line 255
    const/4 v1, -0x1

    .line 257
    .local v1, "version":I
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 261
    :goto_0
    return v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hasHoneycomb()Z
    .locals 2

    .prologue
    .line 718
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasHoneycombMR1()Z
    .locals 2

    .prologue
    .line 722
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static imgCompress(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "heigth"    # I

    .prologue
    .line 186
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 187
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 188
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 189
    invoke-static {v1, p1, p2}, Lcn/nubia/notepad/utils/Util;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 190
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 191
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static imgCompress(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 97
    .local v3, "fis":Ljava/io/InputStream;
    :try_start_0
    const-string v9, "/storage"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 98
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v3    # "fis":Ljava/io/InputStream;
    .local v4, "fis":Ljava/io/InputStream;
    move-object v3, v4

    .line 102
    .end local v4    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    :goto_0
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 103
    .local v6, "imgWidth":I
    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 104
    .local v5, "imgHeight":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 105
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 106
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v8, 0x0

    .local v8, "reqWidth":I
    const/4 v7, 0x0

    .line 107
    .local v7, "reqHeight":I
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    int-to-float v9, v8

    int-to-float v10, v5

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    int-to-float v11, v6

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 109
    invoke-static {p2, v8, v7}, Lcn/nubia/notepad/utils/Util;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v9

    iput v9, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 111
    const/4 v9, 0x0

    iput-boolean v9, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 112
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 113
    const/4 v9, 0x1

    iput-boolean v9, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 114
    const/4 v9, 0x1

    iput-boolean v9, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 115
    const/4 v9, 0x0

    invoke-static {v3, v9, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 120
    if-eqz v3, :cond_0

    .line 121
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "imgHeight":I
    .end local v6    # "imgWidth":I
    .end local v7    # "reqHeight":I
    .end local v8    # "reqWidth":I
    :cond_0
    :goto_1
    return-object v0

    .line 100
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 123
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "imgHeight":I
    .restart local v6    # "imgWidth":I
    .restart local v7    # "reqHeight":I
    .restart local v8    # "reqWidth":I
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "imgHeight":I
    .end local v6    # "imgWidth":I
    .end local v7    # "reqHeight":I
    .end local v8    # "reqWidth":I
    :catch_1
    move-exception v2

    .line 117
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    if-eqz v3, :cond_0

    .line 121
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 123
    :catch_2
    move-exception v2

    .line 124
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 119
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 120
    if-eqz v3, :cond_2

    .line 121
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 126
    :cond_2
    :goto_2
    throw v9

    .line 123
    :catch_3
    move-exception v2

    .line 124
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static imgResize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 171
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 172
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 173
    move v4, p1

    .local v4, "reqWidth":I
    move v3, p2

    .line 174
    .local v3, "reqHeight":I
    invoke-static {v2, v4, v3}, Lcn/nubia/notepad/utils/Util;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 176
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 177
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 178
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 179
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 180
    const/4 v5, 0x0

    invoke-static {v1, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    return-object v0
.end method

.method public static initDatabaseTime(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1046
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1047
    .local v1, "mSharePreference":Landroid/content/SharedPreferences;
    const-string v3, "isAppFirst"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1061
    :goto_0
    return-void

    .line 1051
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isAppFirst"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1053
    const-string v2, "content = \"notepad_help_title_2\" or content = \"notepad_help_title_3\" or content = \"notepad_help_title_6\""

    .line 1057
    .local v2, "selection":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1058
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1059
    const-string v3, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1060
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isChinese(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 692
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 693
    .local v1, "mLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "county":Ljava/lang/String;
    const-string v2, "CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 695
    :cond_0
    const/4 v2, 0x1

    .line 697
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLargeTitleOpen(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1144
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return v3

    .line 1147
    :cond_1
    const-string v5, "ro.build.rom.internal.id"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1148
    .local v2, "romVersion":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 1149
    goto :goto_0

    .line 1151
    :cond_2
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1152
    .local v0, "pointIndex":I
    const/4 v5, 0x2

    if-ge v0, v5, :cond_3

    move v3, v4

    .line 1153
    goto :goto_0

    .line 1155
    :cond_3
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1156
    .local v1, "romVerInt":I
    const/4 v5, 0x6

    if-ge v1, v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public static isLeftOpen(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1100
    if-eqz p0, :cond_1

    .line 1101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1102
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "single_hand_common_use"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1104
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return v1

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v1, v2

    .line 1102
    goto :goto_0

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    move v1, v2

    .line 1104
    goto :goto_0
.end method

.method public static isMobileConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1035
    const-string v2, "connectivity"

    .line 1036
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1037
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1038
    .local v1, "net":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSingleReverseOpen(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1092
    if-eqz p0, :cond_1

    .line 1093
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1094
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "single_reverse_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1096
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return v1

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v1, v2

    .line 1094
    goto :goto_0

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    move v1, v2

    .line 1096
    goto :goto_0
.end method

.method public static isToday(J)Z
    .locals 6
    .param p0, "when"    # J

    .prologue
    .line 645
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 646
    .local v3, "time":Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 648
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 649
    .local v2, "thenYear":I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 650
    .local v0, "thenMonth":I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 651
    .local v1, "thenMonthDay":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 652
    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isViewRtl(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 1042
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isYesterday(J)Z
    .locals 10
    .param p0, "when"    # J

    .prologue
    const/4 v8, 0x6

    const/4 v5, 0x1

    .line 631
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 632
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 633
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 634
    .local v1, "dayBefore":I
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 636
    .local v3, "yearBefore":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 637
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 638
    .local v2, "dayNow":I
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 640
    .local v4, "yearNow":I
    sub-int v6, v2, v1

    if-ne v6, v5, :cond_0

    if-eq v4, v3, :cond_1

    :cond_0
    sub-int v6, v4, v3

    if-ne v6, v5, :cond_2

    if-ne v2, v5, :cond_2

    :cond_1
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "imageLongDiameter"    # I

    .prologue
    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 266
    .local v5, "imgWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 267
    .local v6, "imgHeight":I
    int-to-double v2, v5

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v20

    int-to-double v0, v6

    move-wide/from16 v20, v0

    div-double v14, v2, v20

    .line 268
    .local v14, "partion":D
    mul-double v2, v14, v14

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v2, v2, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 269
    .local v18, "sqrtLength":D
    move/from16 v0, p1

    int-to-double v2, v0

    div-double v20, v14, v18

    mul-double v12, v2, v20

    .line 270
    .local v12, "newImgW":D
    move/from16 v0, p1

    int-to-double v2, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v20, v20, v18

    mul-double v10, v2, v20

    .line 271
    .local v10, "newImgH":D
    int-to-double v2, v5

    div-double v2, v12, v2

    double-to-float v0, v2

    move/from16 v16, v0

    .line 272
    .local v16, "scaleW":F
    int-to-double v2, v6

    div-double v2, v10, v2

    double-to-float v9, v2

    .line 273
    .local v9, "scaleH":F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 274
    .local v7, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v16

    invoke-virtual {v7, v0, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 275
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static saveShareBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 377
    const/16 v20, 0x0

    .line 378
    .local v20, "ok":Z
    if-nez p1, :cond_0

    move/from16 v21, v20

    .line 469
    .end local v20    # "ok":Z
    .local v21, "ok":I
    :goto_0
    return v21

    .line 381
    .end local v21    # "ok":I
    .restart local v20    # "ok":Z
    :cond_0
    new-instance v16, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Pictures"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "nomdeia"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .local v16, "noteShareDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_1

    .line 386
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    .line 389
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v22

    .line 396
    .local v22, "shareFiles":[Ljava/io/File;
    if-eqz v22, :cond_5

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1e

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    .line 397
    const/4 v7, 0x0

    .line 398
    .local v7, "deleteIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v13, v0, :cond_4

    .line 399
    aget-object v24, v22, v13

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    .line 400
    .local v17, "nowFileName":Ljava/lang/String;
    aget-object v24, v22, v7

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 401
    .local v6, "deleteFileName":Ljava/lang/String;
    const-string v24, "_share.jpg"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 398
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 404
    :cond_3
    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0xa

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 405
    .local v18, "nowFile":J
    const/16 v24, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0xa

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 406
    .local v4, "deleteFile":J
    cmp-long v24, v18, v4

    if-gez v24, :cond_2

    .line 407
    move v7, v13

    goto :goto_2

    .line 410
    .end local v4    # "deleteFile":J
    .end local v6    # "deleteFileName":Ljava/lang/String;
    .end local v17    # "nowFileName":Ljava/lang/String;
    .end local v18    # "nowFile":J
    :cond_4
    aget-object v24, v22, v7

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 411
    aget-object v24, v22, v7

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 415
    .end local v7    # "deleteIndex":I
    .end local v13    # "i":I
    :cond_5
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v24, "yyyyMMddHHmmss"

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 416
    .local v11, "format":Ljava/text/SimpleDateFormat;
    new-instance v24, Ljava/util/Date;

    invoke-direct/range {v24 .. v24}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 417
    .local v12, "formatDate":Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "_share.jpg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v24, Lcn/nubia/notepad/utils/Util;->mNoteShareFile:Ljava/io/File;

    .line 418
    const/4 v9, 0x0

    .line 420
    .local v9, "fileOutput":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    sget-object v24, Lcn/nubia/notepad/utils/Util;->mNoteShareFile:Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    .end local v9    # "fileOutput":Ljava/io/FileOutputStream;
    .local v10, "fileOutput":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x64

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 423
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 424
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 425
    new-instance v14, Landroid/content/Intent;

    const-string v24, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v14, "intent":Landroid/content/Intent;
    sget-object v24, Lcn/nubia/notepad/utils/Util;->mNoteShareFile:Ljava/io/File;

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v23

    .line 427
    .local v23, "uri":Landroid/net/Uri;
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 428
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 430
    const/16 v20, 0x1

    .line 434
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v24

    if-nez v24, :cond_6

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 436
    const/16 p1, 0x0

    .line 439
    :cond_6
    if-eqz v10, :cond_7

    .line 440
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 441
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    move-object v9, v10

    .line 447
    .end local v10    # "fileOutput":Ljava/io/FileOutputStream;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v23    # "uri":Landroid/net/Uri;
    .restart local v9    # "fileOutput":Ljava/io/FileOutputStream;
    :cond_8
    :goto_3
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 448
    .local v15, "newValues":Landroid/content/ContentValues;
    const-string v24, "_display_name"

    sget-object v25, Lcn/nubia/notepad/utils/Util;->mNoteShareFile:Ljava/io/File;

    .line 449
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    .line 448
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v24, "_data"

    sget-object v25, Lcn/nubia/notepad/utils/Util;->mNoteShareFile:Ljava/io/File;

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    sget-object v25, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move/from16 v21, v20

    .line 469
    .restart local v21    # "ok":I
    goto/16 :goto_0

    .line 443
    .end local v9    # "fileOutput":Ljava/io/FileOutputStream;
    .end local v15    # "newValues":Landroid/content/ContentValues;
    .end local v21    # "ok":I
    .restart local v10    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v14    # "intent":Landroid/content/Intent;
    .restart local v23    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 444
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 446
    .end local v10    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v9    # "fileOutput":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 431
    .end local v8    # "e":Ljava/io/IOException;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v23    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v8

    .line 432
    .local v8, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 434
    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v24

    if-nez v24, :cond_9

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 436
    const/16 p1, 0x0

    .line 439
    :cond_9
    if-eqz v9, :cond_8

    .line 440
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 441
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 443
    :catch_2
    move-exception v8

    .line 444
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 434
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v24

    :goto_5
    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v25

    if-nez v25, :cond_a

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 436
    const/16 p1, 0x0

    .line 439
    :cond_a
    if-eqz v9, :cond_b

    .line 440
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 441
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 446
    :cond_b
    :goto_6
    throw v24

    .line 443
    :catch_3
    move-exception v8

    .line 444
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 434
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v10    # "fileOutput":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v24

    move-object v9, v10

    .end local v10    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v9    # "fileOutput":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 431
    .end local v9    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v10    # "fileOutput":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    move-object v9, v10

    .end local v10    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v9    # "fileOutput":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public static setDarkStatusIcon(Landroid/app/Activity;Z)V
    .locals 4
    .param p0, "ac"    # Landroid/app/Activity;
    .param p1, "bDark"    # Z

    .prologue
    .line 1160
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 1161
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1162
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 1164
    .local v1, "vis":I
    if-eqz p1, :cond_1

    .line 1165
    or-int/lit16 v1, v1, 0x2000

    .line 1169
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1172
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "vis":I
    :cond_0
    return-void

    .line 1167
    .restart local v0    # "decorView":Landroid/view/View;
    .restart local v1    # "vis":I
    :cond_1
    and-int/lit16 v1, v1, -0x2001

    goto :goto_0
.end method

.method public static setLastSyncTime(J)V
    .locals 0
    .param p0, "time"    # J

    .prologue
    .line 702
    sput-wide p0, Lcn/nubia/notepad/utils/Util;->mLastSyncTime:J

    .line 703
    return-void
.end method

.method public static setRemindAlarm(Landroid/content/Context;JI)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remindTime"    # J
    .param p3, "noteId"    # I

    .prologue
    .line 297
    if-nez p0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 303
    const-string v1, "alarm"

    .line 304
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 307
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-static {p0, p3}, Lcn/nubia/notepad/utils/Util;->getNotifyPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    invoke-static {p0, p3}, Lcn/nubia/notepad/utils/Util;->getNotifyPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setRestoreStatus(Z)V
    .locals 0
    .param p0, "status"    # Z

    .prologue
    .line 710
    sput-boolean p0, Lcn/nubia/notepad/utils/Util;->mRestore:Z

    .line 711
    return-void
.end method

.method public static shareNoteNormal(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v5, "image/*"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v5, "Util"

    const-string v6, "shareNoteNormal"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcn/nubia/notepad/utils/Util;->mNoteShareFile:Ljava/io/File;

    invoke-static {p0, v5, v6}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 481
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 482
    .local v2, "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 483
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 484
    .local v1, "packageName":Ljava/lang/String;
    const-string v6, "Util"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shareNoteNormal packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p0, v1, v4, v9}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    .line 491
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    const-string v5, "cn.nubia.share"

    invoke-virtual {p0, v5, v4, v9}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 494
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 495
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 501
    .end local v2    # "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_1
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 502
    return-void

    .line 497
    :cond_1
    const-string v5, "Util"

    const-string v6, "shareNoteNormal else."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v5, "android.intent.extra.STREAM"

    sget-object v6, Lcn/nubia/notepad/utils/Util;->mNoteShareFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static shareNoteText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 596
    if-nez p0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 599
    :cond_0
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shareNoteText:= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const v3, 0x7f0a009c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, "shareText":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 602
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_1

    .line 609
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 617
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shareNoteText: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 611
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static shareNoteWithNubiaService(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x3

    .line 505
    const-string v5, ""

    .line 506
    .local v5, "shareText":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 507
    const v7, 0x7f0a009c

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 509
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 510
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v7, "image/*"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    sget-object v7, Lcn/nubia/notepad/utils/Util;->mNoteShareFile:Ljava/io/File;

    invoke-static {p0, v7}, Lcn/nubia/notepad/utils/Util;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 514
    .local v6, "uri":Landroid/net/Uri;
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shareNoteWithNubiaService: uri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 516
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 517
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_2

    .line 518
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 519
    .local v3, "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 520
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 521
    .local v2, "packageName":Ljava/lang/String;
    const-string v8, "Util"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shareNoteNormal packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {p0, v2, v6, v11}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    .line 524
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const-string v7, "com.tencent.mobileqq"

    invoke-virtual {p0, v7, v6, v11}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 528
    const-string v7, "cn.nubia.share"

    invoke-virtual {p0, v7, v6, v11}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 532
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 535
    .end local v3    # "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :try_start_0
    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_1
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "ane":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 839
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 840
    return-void
.end method

.method public static startWithDot(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 843
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static transferAllLabelRecordToUnclassifiedLabel(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 877
    const/4 v6, 0x0

    .line 880
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 881
    .local v8, "id":I
    :try_start_0
    new-instance v9, Lcn/nubia/notepad/utils/NotesData;

    invoke-direct {v9, p0}, Lcn/nubia/notepad/utils/NotesData;-><init>(Landroid/content/Context;)V

    .line 882
    .local v9, "mNotesData":Lcn/nubia/notepad/utils/NotesData;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/notepad/utils/NotesData;->NOTE_LABEL_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    .line 885
    invoke-virtual {v9, v3, v4}, Lcn/nubia/notepad/utils/NotesData;->getSelectionByType(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "top DESC, modified DESC"

    .line 882
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 888
    if-eqz v6, :cond_2

    .line 889
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 891
    .local v10, "title":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 893
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'unclassified\' label id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    .end local v10    # "title":Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    if-eq v8, v0, :cond_4

    .line 899
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 900
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "extra_1"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 901
    const-string v12, "(classify != 1000 OR classify is null ) AND extra_1 = 0"

    .line 902
    .local v12, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v11, v12, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    .end local v11    # "values":Landroid/content/ContentValues;
    .end local v12    # "where":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 912
    const/4 v6, 0x0

    .line 915
    .end local v9    # "mNotesData":Lcn/nubia/notepad/utils/NotesData;
    :cond_3
    :goto_1
    return-void

    .line 904
    .restart local v9    # "mNotesData":Lcn/nubia/notepad/utils/NotesData;
    :cond_4
    :try_start_1
    const-string v0, "Util"

    const-string v1, "\'unclassified\' label id not fund from db"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 907
    .end local v9    # "mNotesData":Lcn/nubia/notepad/utils/NotesData;
    :catch_0
    move-exception v7

    .line 908
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 910
    if-eqz v6, :cond_3

    .line 911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 912
    const/4 v6, 0x0

    goto :goto_1

    .line 910
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 912
    const/4 v6, 0x0

    .line 914
    :cond_5
    throw v0
.end method

.method public static updateDafaultTip(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 861
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 862
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p0}, Lcn/nubia/notepad/utils/Util;->isSingleReverseOpen(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 863
    const-string v3, "title"

    const v4, 0x7f0a0106

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v3, "content"

    const v4, 0x7f0a0106

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :goto_0
    const-string v2, "content = \"notepad_help_title_3\" or content = \"notepad_help_title_6\""

    .line 870
    .local v2, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 874
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "where":Ljava/lang/String;
    :goto_1
    return-void

    .line 866
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string v3, "title"

    const v4, 0x7f0a0108

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string v3, "content"

    const v4, 0x7f0a0108

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 871
    .end local v1    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 872
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static updateLabelDataBase(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 847
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/nubia/notepad/utils/Util$1;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/utils/Util$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 857
    return-void
.end method

.method private static updatePresetClassify(Landroid/content/Context;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 918
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v14, "labelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesLabelData;>;"
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 920
    .local v16, "mPresetClassify":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .line 922
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 923
    .local v17, "values":Landroid/content/ContentValues;
    const-string v1, "classify"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 924
    const-string v4, "content = \"notepad_help_title_2\" or content = \"notepad_help_title_3\""

    .line 927
    .local v4, "selection":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 929
    const-string v4, "classify in (1,2,3) ) GROUP BY (classify"

    .line 930
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "classify"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 933
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 961
    :cond_0
    if-eqz v12, :cond_1

    .line 962
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 963
    const/4 v12, 0x0

    .line 966
    .end local v4    # "selection":Ljava/lang/String;
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return-void

    .line 936
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 937
    const-string v1, "classify"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 938
    .local v11, "classify":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 958
    .end local v4    # "selection":Ljava/lang/String;
    .end local v11    # "classify":I
    .end local v17    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v13

    .line 959
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 961
    if-eqz v12, :cond_1

    .line 962
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 963
    const/4 v12, 0x0

    goto :goto_0

    .line 940
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_3
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 961
    if-eqz v12, :cond_1

    .line 962
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 963
    const/4 v12, 0x0

    goto :goto_0

    .line 944
    :cond_4
    :try_start_4
    new-instance v15, Lcn/nubia/notepad/utils/NotesData;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcn/nubia/notepad/utils/NotesData;-><init>(Landroid/content/Context;)V

    .line 946
    .local v15, "mNotesData":Lcn/nubia/notepad/utils/NotesData;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcn/nubia/notepad/utils/NotesData;->NOTE_LABEL_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    .line 949
    invoke-virtual {v15, v1, v2}, Lcn/nubia/notepad/utils/NotesData;->getSelectionByType(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "top DESC, modified DESC"

    .line 946
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 952
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 953
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcn/nubia/notepad/utils/Util;->getLabelByCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcn/nubia/notepad/utils/NotesLabelData;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 961
    .end local v4    # "selection":Ljava/lang/String;
    .end local v15    # "mNotesData":Lcn/nubia/notepad/utils/NotesData;
    .end local v17    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_5

    .line 962
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 963
    const/4 v12, 0x0

    .line 965
    :cond_5
    throw v1

    .line 955
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v15    # "mNotesData":Lcn/nubia/notepad/utils/NotesData;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 956
    .local v11, "classify":Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v14, v15}, Lcn/nubia/notepad/utils/Util;->updatePresetClassifyDB(Landroid/content/Context;ILjava/util/ArrayList;Lcn/nubia/notepad/utils/NotesData;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 961
    .end local v11    # "classify":Ljava/lang/Integer;
    :cond_7
    if-eqz v12, :cond_1

    .line 962
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 963
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private static updatePresetClassifyDB(Landroid/content/Context;ILjava/util/ArrayList;Lcn/nubia/notepad/utils/NotesData;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "classify"    # I
    .param p3, "mNotesData"    # Lcn/nubia/notepad/utils/NotesData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesLabelData;",
            ">;",
            "Lcn/nubia/notepad/utils/NotesData;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesLabelData;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 994
    const-string v1, ""

    .line 995
    .local v1, "label":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1025
    :goto_0
    return-void

    .line 997
    :pswitch_0
    const v5, 0x7f0a0069

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1008
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "classify = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1009
    .local v3, "selection":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1010
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 1011
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1012
    const-string v5, "extra_1"

    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1013
    const-string v5, "classify"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1014
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v3, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1000
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :pswitch_1
    const v5, 0x7f0a006a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1001
    goto :goto_1

    .line 1003
    :pswitch_2
    const v5, 0x7f0a006b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1004
    goto :goto_1

    .line 1020
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {p3, v1}, Lcn/nubia/notepad/utils/NotesData;->insertNoteLabel(Ljava/lang/String;)I

    move-result v2

    .line 1021
    .local v2, "labelId":I
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1022
    const-string v5, "extra_1"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1023
    const-string v5, "classify"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1024
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v3, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 995
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 622
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 623
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.notepad.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 625
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcn/nubia/notepad/widget/NotePadWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 627
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 628
    return-void
.end method
