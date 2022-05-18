.class public Lcn/nubia/video/editor/VideoTrimInfo;
.super Ljava/lang/Object;
.source "VideoTrimInfo.java"


# instance fields
.field public duration:I

.field public endClip:J

.field public endSpeedChange:J

.field public frameRate:I

.field public is4kVideo:Z

.field public isSlomoVideo:Z

.field public mimeId:I

.field public recordTime:I

.field public rotation:I

.field public slomoVideoType:I

.field public startClip:J

.field public startSpeedChange:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcn/nubia/video/editor/VideoTrimInfo;->isSlomoVideo:Z

    .line 7
    iput-boolean v0, p0, Lcn/nubia/video/editor/VideoTrimInfo;->is4kVideo:Z

    .line 8
    iput v0, p0, Lcn/nubia/video/editor/VideoTrimInfo;->slomoVideoType:I

    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->recordTime:I

    const-wide/16 v2, 0x0

    .line 17
    iput-wide v2, p0, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    .line 18
    iput-wide v2, p0, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    .line 19
    iput-boolean v0, p0, Lcn/nubia/video/editor/VideoTrimInfo;->isSlomoVideo:Z

    .line 20
    iput-boolean v0, p0, Lcn/nubia/video/editor/VideoTrimInfo;->is4kVideo:Z

    .line 21
    iput v0, p0, Lcn/nubia/video/editor/VideoTrimInfo;->slomoVideoType:I

    .line 22
    iput v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->frameRate:I

    .line 23
    iput-wide v2, p0, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    .line 24
    iput-wide v2, p0, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    .line 25
    iput v0, p0, Lcn/nubia/video/editor/VideoTrimInfo;->rotation:I

    .line 26
    iput v0, p0, Lcn/nubia/video/editor/VideoTrimInfo;->duration:I

    .line 27
    iput v0, p0, Lcn/nubia/video/editor/VideoTrimInfo;->mimeId:I

    .line 28
    iput v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->recordTime:I

    return-void
.end method


# virtual methods
.method public copy()Lcn/nubia/video/editor/VideoTrimInfo;
    .locals 3

    .line 32
    new-instance v0, Lcn/nubia/video/editor/VideoTrimInfo;

    invoke-direct {v0}, Lcn/nubia/video/editor/VideoTrimInfo;-><init>()V

    .line 33
    iget-wide v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    iput-wide v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    .line 34
    iget-wide v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    iput-wide v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    .line 35
    iget-boolean v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->isSlomoVideo:Z

    iput-boolean v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->isSlomoVideo:Z

    .line 36
    iget-boolean v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->is4kVideo:Z

    iput-boolean v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->is4kVideo:Z

    .line 37
    iget v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->frameRate:I

    iput v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->frameRate:I

    .line 38
    iget-wide v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    iput-wide v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    .line 39
    iget-wide v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    iput-wide v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    .line 40
    iget v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->rotation:I

    iput v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->rotation:I

    .line 41
    iget v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->duration:I

    iput v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->duration:I

    .line 42
    iget v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->mimeId:I

    iput v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->mimeId:I

    .line 43
    iget v1, p0, Lcn/nubia/video/editor/VideoTrimInfo;->recordTime:I

    iput v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->recordTime:I

    return-object v0
.end method
