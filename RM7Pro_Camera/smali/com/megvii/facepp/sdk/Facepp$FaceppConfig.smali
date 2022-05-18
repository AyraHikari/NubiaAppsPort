.class public Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/facepp/sdk/Facepp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceppConfig"
.end annotation


# static fields
.field public static final DETECTION_MODE_NORMAL:I = 0x0

.field public static final DETECTION_MODE_TRACKING:I = 0x1

.field public static final DETECTION_MODE_TRACKING_FAST:I = 0x3

.field public static final DETECTION_MODE_TRACKING_RECT:I = 0x5

.field public static final DETECTION_MODE_TRACKING_ROBUST:I = 0x4

.field public static final MG_FPP_DETECTIONMODE_TRACK_RECT:I = 0x6


# instance fields
.field public detectionMode:I

.field public face_confidence_filter:F

.field public happy_confidence_filter:F

.field public happy_threshold:F

.field public interval:I

.field public is_back_camera:Z

.field public is_rect_Qualcomm:Z

.field public is_smooth:Z

.field public is_smooth_track:Z

.field public minFaceSize:I

.field public one_face_tracking:I

.field public roi_bottom:I

.field public roi_left:I

.field public roi_right:I

.field public roi_top:I

.field public rotation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 877
    iput-boolean v0, p0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->is_smooth:Z

    const/4 v0, 0x0

    .line 878
    iput-boolean v0, p0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->is_back_camera:Z

    .line 880
    iput-boolean v0, p0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->is_smooth_track:Z

    .line 881
    iput-boolean v0, p0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->is_rect_Qualcomm:Z

    return-void
.end method
