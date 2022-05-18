.class Lcn/nubia/video/editor/VideoTrim$1;
.super Ljava/lang/Object;
.source "VideoTrim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/editor/VideoTrim;->trimVideo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/editor/VideoTrim;

.field final synthetic val$endMs:I

.field final synthetic val$mSrcFile:Ljava/io/File;

.field final synthetic val$startMs:I

.field final synthetic val$trimtype:I


# direct methods
.method constructor <init>(Lcn/nubia/video/editor/VideoTrim;ILjava/io/File;II)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    iput p2, p0, Lcn/nubia/video/editor/VideoTrim$1;->val$trimtype:I

    iput-object p3, p0, Lcn/nubia/video/editor/VideoTrim$1;->val$mSrcFile:Ljava/io/File;

    iput p4, p0, Lcn/nubia/video/editor/VideoTrim$1;->val$startMs:I

    iput p5, p0, Lcn/nubia/video/editor/VideoTrim$1;->val$endMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/video/editor/VideoTrim$1;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoTrim$1;->addSlowFlag()V

    return-void
.end method

.method private addSlowFlag()V
    .locals 14

    .line 132
    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcn/nubia/video/editor/VideoTrimInfo;->isSlomoVideo:Z

    if-eqz v0, :cond_7

    .line 134
    iget v0, p0, Lcn/nubia/video/editor/VideoTrim$1;->val$trimtype:I

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim$1;->val$mSrcFile:Ljava/io/File;

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v0}, Lcn/nubia/video/editor/VideoTrim;->access$100(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    .line 139
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v1}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/editor/VideoTrimInfo;->copy()Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v1

    .line 146
    iget-object v2, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v2}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v2

    iget-wide v2, v2, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    iget-object v4, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v4}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v4

    iget-wide v4, v4, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v2}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v2

    iget-wide v2, v2, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    iget-object v4, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v4}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v4

    iget-wide v4, v4, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    .line 147
    invoke-static {v2}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v2

    iget-wide v2, v2, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    iget-object v4, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v4}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v4

    iget-wide v4, v4, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    .line 148
    invoke-static {v2}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v2

    iget-wide v2, v2, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    iget-object v4, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v4}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v4

    iget-wide v4, v4, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    .line 149
    :cond_2
    iget-object v2, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v2}, Lcn/nubia/video/editor/VideoTrim;->access$200(Lcn/nubia/video/editor/VideoTrim;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 150
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "duration"

    .line 151
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const-string v6, "_data=?"

    const-string v8, "_display_name"

    move-object v5, v2

    .line 154
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 156
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 157
    aget-object v2, v2, v9

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 159
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-lez v2, :cond_5

    .line 161
    iget-object v2, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v2}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v2

    iget-wide v8, v2, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    iget-object v2, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v2}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v2

    iget-wide v10, v2, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    cmp-long v2, v8, v10

    const-wide/16 v8, 0x0

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    .line 162
    invoke-static {v2}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v2

    iget-wide v10, v2, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    iget-object v2, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v2}, Lcn/nubia/video/editor/VideoTrim;->access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;

    move-result-object v2

    iget-wide v12, v2, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    cmp-long v2, v10, v12

    if-ltz v2, :cond_3

    goto :goto_1

    .line 168
    :cond_3
    iput-wide v8, v1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    .line 169
    iput-wide v8, v1, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    .line 170
    iput-wide v4, v1, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    sub-long/2addr v4, v6

    .line 171
    iput-wide v4, v1, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    goto :goto_2

    .line 163
    :cond_4
    :goto_1
    iput-wide v8, v1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    .line 164
    iput-wide v8, v1, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    .line 165
    iput-wide v4, v1, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    .line 166
    iput-wide v8, v1, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    .line 175
    :cond_5
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_6
    invoke-static {v0, v1}, Lcn/nubia/video/editor/SaveVideoFileUtils;->writeSlomoVideoFlag(Ljava/io/File;Lcn/nubia/video/editor/VideoTrimInfo;)V

    :cond_7
    return-void
.end method

.method private trim()V
    .locals 9

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v1}, Lcn/nubia/video/editor/VideoTrim;->access$100(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v1}, Lcn/nubia/video/editor/VideoTrim;->access$100(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e9

    const/16 v2, 0x3ec

    .line 184
    :try_start_0
    iget-object v3, p0, Lcn/nubia/video/editor/VideoTrim$1;->val$mSrcFile:Ljava/io/File;

    iget-object v4, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v4}, Lcn/nubia/video/editor/VideoTrim;->access$100(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    iget v5, p0, Lcn/nubia/video/editor/VideoTrim$1;->val$startMs:I

    iget v6, p0, Lcn/nubia/video/editor/VideoTrim$1;->val$endMs:I

    invoke-static {v3, v4, v5, v6}, Lcn/nubia/gallery3d/video/VideoUtils;->startTrim(Ljava/io/File;Ljava/io/File;II)V

    .line 186
    iget v3, p0, Lcn/nubia/video/editor/VideoTrim$1;->val$trimtype:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 191
    iget-object v3, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v3}, Lcn/nubia/video/editor/VideoTrim;->access$300(Lcn/nubia/video/editor/VideoTrim;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v7}, Lcn/nubia/video/editor/VideoTrim;->access$100(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v8}, Lcn/nubia/video/editor/VideoTrim;->access$200(Lcn/nubia/video/editor/VideoTrim;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcn/nubia/video/editor/SaveVideoFileUtils;->overWriteFile(Ljava/lang/String;Lcn/nubia/video/editor/SaveVideoFileInfo;Landroid/content/ContentResolver;)I

    move-result v3

    if-lez v3, :cond_0

    new-array v3, v5, [Ljava/lang/String;

    .line 193
    iget-object v5, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v5}, Lcn/nubia/video/editor/VideoTrim;->access$300(Lcn/nubia/video/editor/VideoTrim;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_0

    .line 195
    :cond_0
    iget-object v3, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v3}, Lcn/nubia/video/editor/VideoTrim;->access$400(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;->onVideoTrimError(I)V

    move-object v3, v6

    goto :goto_0

    :cond_1
    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    .line 200
    :goto_0
    iget-object v4, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v4}, Lcn/nubia/video/editor/VideoTrim;->access$200(Lcn/nubia/video/editor/VideoTrim;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcn/nubia/video/editor/VideoTrim$1$1;

    invoke-direct {v5, p0}, Lcn/nubia/video/editor/VideoTrim$1$1;-><init>(Lcn/nubia/video/editor/VideoTrim$1;)V

    invoke-static {v4, v3, v6, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 223
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    iget-object v2, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v2}, Lcn/nubia/video/editor/VideoTrim;->access$400(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;->onVideoTrimError(I)V

    .line 225
    iget-object v1, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v1, v0}, Lcn/nubia/video/editor/VideoTrim;->access$500(Lcn/nubia/video/editor/VideoTrim;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    .line 219
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 220
    iget-object v2, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v2}, Lcn/nubia/video/editor/VideoTrim;->access$400(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;->onVideoTrimError(I)V

    .line 221
    iget-object v1, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v1, v0}, Lcn/nubia/video/editor/VideoTrim;->access$500(Lcn/nubia/video/editor/VideoTrim;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    .line 215
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 216
    iget-object v1, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v1}, Lcn/nubia/video/editor/VideoTrim;->access$400(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    move-result-object v1

    invoke-interface {v1, v2}, Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;->onVideoTrimError(I)V

    .line 217
    iget-object v1, p0, Lcn/nubia/video/editor/VideoTrim$1;->this$0:Lcn/nubia/video/editor/VideoTrim;

    invoke-static {v1, v0}, Lcn/nubia/video/editor/VideoTrim;->access$500(Lcn/nubia/video/editor/VideoTrim;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 232
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoTrim$1;->trim()V

    return-void
.end method
