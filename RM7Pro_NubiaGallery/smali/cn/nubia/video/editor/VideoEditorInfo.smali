.class public Lcn/nubia/video/editor/VideoEditorInfo;
.super Ljava/lang/Object;
.source "VideoEditorInfo.java"


# instance fields
.field public is4kVideo:Z

.field public isSlomoVideo:Z

.field public mCurrentCropArea:Landroid/graphics/RectF;

.field public mDuration:I

.field public mEndClip:J

.field public mEndSpeedChange:J

.field public mFrameInterval:J

.field public mFrameRate:I

.field public mRotation:I

.field public mSlomoSkipCount:I

.field public mStartClip:J

.field public mStartSpeedChange:J

.field public mTrimMode:I

.field public mVideoHeight:I

.field public mVideoTailPath:Ljava/lang/String;

.field public mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcn/nubia/video/editor/VideoEditorInfo;->isSlomoVideo:Z

    .line 9
    iput-boolean v0, p0, Lcn/nubia/video/editor/VideoEditorInfo;->is4kVideo:Z

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoTailPath:Ljava/lang/String;

    .line 18
    iput v0, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoWidth:I

    .line 19
    iput v0, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoHeight:I

    const-wide/16 v2, -0x1

    .line 20
    iput-wide v2, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mFrameInterval:J

    .line 21
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mCurrentCropArea:Landroid/graphics/RectF;

    const-wide/16 v4, 0x0

    .line 23
    iput-wide v4, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    .line 24
    iput-wide v4, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mEndClip:J

    .line 25
    iput-boolean v0, p0, Lcn/nubia/video/editor/VideoEditorInfo;->isSlomoVideo:Z

    .line 26
    iput-boolean v0, p0, Lcn/nubia/video/editor/VideoEditorInfo;->is4kVideo:Z

    const/16 v6, 0x1e

    .line 27
    iput v6, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mFrameRate:I

    .line 28
    iput v0, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mSlomoSkipCount:I

    .line 29
    iput-wide v4, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    .line 30
    iput-wide v4, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mEndSpeedChange:J

    .line 31
    iput v0, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mRotation:I

    .line 32
    iput v0, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mDuration:I

    .line 33
    iput v0, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mTrimMode:I

    .line 34
    iput v0, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoWidth:I

    .line 35
    iput v0, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoHeight:I

    .line 36
    iput-wide v2, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mFrameInterval:J

    .line 37
    iput-object v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoTailPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoEditorInfo [mStartClip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEndClip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mEndClip:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSlomoVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->isSlomoVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is4kVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->is4kVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartSpeedChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEndSpeedChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mEndSpeedChange:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTrimMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mTrimMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
