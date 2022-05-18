.class final enum Lcn/nubia/video/player/VideoView$ScaleMode;
.super Ljava/lang/Enum;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScaleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/video/player/VideoView$ScaleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/video/player/VideoView$ScaleMode;

.field public static final enum SM_FullScreen:Lcn/nubia/video/player/VideoView$ScaleMode;

.field public static final enum SM_None:Lcn/nubia/video/player/VideoView$ScaleMode;

.field public static final enum SM_WideScreen:Lcn/nubia/video/player/VideoView$ScaleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 75
    new-instance v0, Lcn/nubia/video/player/VideoView$ScaleMode;

    const-string v1, "SM_WideScreen"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/video/player/VideoView$ScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/video/player/VideoView$ScaleMode;->SM_WideScreen:Lcn/nubia/video/player/VideoView$ScaleMode;

    new-instance v1, Lcn/nubia/video/player/VideoView$ScaleMode;

    const-string v3, "SM_FullScreen"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/video/player/VideoView$ScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/video/player/VideoView$ScaleMode;->SM_FullScreen:Lcn/nubia/video/player/VideoView$ScaleMode;

    new-instance v3, Lcn/nubia/video/player/VideoView$ScaleMode;

    const-string v5, "SM_None"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/video/player/VideoView$ScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/video/player/VideoView$ScaleMode;->SM_None:Lcn/nubia/video/player/VideoView$ScaleMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/video/player/VideoView$ScaleMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 74
    sput-object v5, Lcn/nubia/video/player/VideoView$ScaleMode;->$VALUES:[Lcn/nubia/video/player/VideoView$ScaleMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/video/player/VideoView$ScaleMode;
    .locals 1

    .line 74
    const-class v0, Lcn/nubia/video/player/VideoView$ScaleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/video/player/VideoView$ScaleMode;

    return-object p0
.end method

.method public static values()[Lcn/nubia/video/player/VideoView$ScaleMode;
    .locals 1

    .line 74
    sget-object v0, Lcn/nubia/video/player/VideoView$ScaleMode;->$VALUES:[Lcn/nubia/video/player/VideoView$ScaleMode;

    invoke-virtual {v0}, [Lcn/nubia/video/player/VideoView$ScaleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/video/player/VideoView$ScaleMode;

    return-object v0
.end method
