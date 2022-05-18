.class public Lcn/nubia/video/editor/ParamSetUtils$ParamSet;
.super Ljava/lang/Object;
.source "ParamSetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/editor/ParamSetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParamSet"
.end annotation


# instance fields
.field public CSD0:Ljava/nio/ByteBuffer;

.field public CSD1:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcn/nubia/video/editor/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    .line 31
    iput-object v0, p0, Lcn/nubia/video/editor/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    .line 39
    iput-object v0, p0, Lcn/nubia/video/editor/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    .line 40
    iput-object v0, p0, Lcn/nubia/video/editor/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcn/nubia/video/editor/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    .line 31
    iput-object v0, p0, Lcn/nubia/video/editor/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    .line 34
    iput-object p1, p0, Lcn/nubia/video/editor/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    .line 35
    iput-object p2, p0, Lcn/nubia/video/editor/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    return-void
.end method
