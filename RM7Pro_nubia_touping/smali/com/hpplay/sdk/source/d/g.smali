.class public Lcom/hpplay/sdk/source/d/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "key_log_path"

.field public static final b:Ljava/lang/String; = "key_log2_path"

.field public static final c:Ljava/lang/String; = "key_log_cur_path"

.field private static final d:Ljava/lang/String; = "LogWriterThread"

.field private static final g:Ljava/lang/String; = "/files/hplog/"

.field private static final m:Ljava/lang/String; = "sourceLog.log"

.field private static final n:Ljava/lang/String; = "sourceLog2.log"

.field private static p:Ljava/text/SimpleDateFormat;

.field private static q:Ljava/util/Date;


# instance fields
.field private e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private volatile k:Z

.field private l:I

.field private o:I

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hpplay/sdk/source/d/g;->p:Ljava/text/SimpleDateFormat;

    .line 48
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/d/g;->q:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/d/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/d/g;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/d/g;->k:Z

    .line 39
    const/high16 v0, 0x400000

    iput v0, p0, Lcom/hpplay/sdk/source/d/g;->l:I

    .line 46
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/hpplay/sdk/source/d/g;->o:I

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/d/g;->r:J

    .line 51
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/files/hplog/"

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/d/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/d/g;->k:Z

    .line 57
    const-string v0, "LogWriterThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLogPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/d/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "LogWriterThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLog2Path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/d/g;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget v0, p0, Lcom/hpplay/sdk/source/d/g;->l:I

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/hpplay/sdk/source/d/g;->b(Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->i:Ljava/lang/String;

    .line 216
    :goto_0
    const-string v1, "LogWriterThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change log path to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object v0

    .line 211
    :cond_1
    iget v0, p0, Lcom/hpplay/sdk/source/d/g;->l:I

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/hpplay/sdk/source/d/g;->b(Ljava/lang/String;)V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/io/BufferedWriter;)V
    .locals 2

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v1, "LogWriterThread"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 252
    .line 255
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 259
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 260
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 263
    :goto_1
    :try_start_3
    const-string v3, "LogWriterThread"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 265
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 266
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 268
    :goto_2
    return-void

    .line 265
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 266
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    .line 265
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 266
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0

    .line 265
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 262
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 276
    :cond_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 277
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 279
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string v1, "LogWriterThread"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    sget-object v0, Lcom/hpplay/sdk/source/d/g;->q:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 233
    sget-object v0, Lcom/hpplay/sdk/source/d/g;->p:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/hpplay/sdk/source/d/g;->q:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 234
    return-object v0
.end method

.method private f()V
    .locals 15

    .prologue
    .line 140
    :try_start_0
    const-string v0, "LogWriterThread"

    const-string v1, "start writing log to local file"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v6, 0x0

    .line 142
    const/4 v2, 0x0

    .line 144
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_log_cur_path"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/hpplay/sdk/source/d/g;->h:Ljava/lang/String;

    .line 148
    :cond_0
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->h:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v9, Ljava/io/File;

    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->i:Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    .line 152
    :goto_0
    iget-boolean v2, p0, Lcom/hpplay/sdk/source/d/g;->k:Z

    if-eqz v2, :cond_3

    .line 153
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 154
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 158
    iget v12, p0, Lcom/hpplay/sdk/source/d/g;->l:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-ltz v10, :cond_5

    move-object v0, p0

    .line 159
    invoke-direct/range {v0 .. v5}, Lcom/hpplay/sdk/source/d/g;->a(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v1

    .line 160
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, v6}, Lcom/hpplay/sdk/source/d/g;->a(Ljava/io/BufferedWriter;)V

    .line 162
    const/4 v2, 0x0

    move-object v14, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v14

    .line 165
    :goto_1
    if-nez v0, :cond_4

    .line 167
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v3, "key_log_cur_path"

    invoke-virtual {v0, v3, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    :goto_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {}, Lcom/hpplay/sdk/source/d/g;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    iget v4, p0, Lcom/hpplay/sdk/source/d/g;->o:I

    if-lt v0, v4, :cond_2

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v7

    .line 181
    const/4 v0, 0x0

    move v4, v0

    :goto_3
    if-ge v4, v7, :cond_1

    .line 182
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    .line 184
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    :cond_2
    move-object v0, v1

    move-object v7, v3

    move-object v1, v2

    .line 187
    goto/16 :goto_0

    .line 188
    :cond_3
    invoke-direct {p0, v6}, Lcom/hpplay/sdk/source/d/g;->a(Ljava/io/BufferedWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_4
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "LogWriterThread"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_4
    move-object v3, v7

    move-object v6, v0

    goto :goto_2

    :cond_5
    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/d/g;->j:Ljava/lang/String;

    .line 64
    const-string v0, "LogWriterThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeLogFile: patchdir = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/d/g;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hpplay/sdk/source/d/g;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 69
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->j:Ljava/lang/String;

    const-string v2, "sourceLog.log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->j:Ljava/lang/String;

    const-string v3, "sourceLog2.log"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 76
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v3, "key_log_cur_path"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/d/g;->h:Ljava/lang/String;

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/d/g;->i:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v2, "key_log_path"

    iget-object v3, p0, Lcom/hpplay/sdk/source/d/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v2, "key_log2_path"

    iget-object v3, p0, Lcom/hpplay/sdk/source/d/g;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v3, "LogWriterThread"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    .line 86
    const-string v3, "LogWriterThread"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v1, "--- start flush Memory to file---"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 240
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/lebo.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 244
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/hpplay/sdk/source/d/g;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string v1, "LogWriterThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hpplay/sdk/source/d/g;->r:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 100
    const/16 v0, 0x1388

    iput v0, p0, Lcom/hpplay/sdk/source/d/g;->o:I

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/d/g;->r:J

    .line 110
    return-void

    .line 102
    :cond_1
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/hpplay/sdk/source/d/g;->o:I

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v1, "---start flush copy to sdcard---"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/d/g;->k:Z

    .line 125
    const-string v0, "LogWriterThread"

    const-string v1, "stop writing log"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 131
    invoke-direct {p0}, Lcom/hpplay/sdk/source/d/g;->f()V

    .line 132
    return-void
.end method
