.class synthetic Lcn/nubia/gallery3d/anim/StateTransitionAnimation$1;
.super Ljava/lang/Object;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/anim/StateTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$nubia$gallery3d$anim$StateTransitionAnimation$Transition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    invoke-static {}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->values()[Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$1;->$SwitchMap$cn$nubia$gallery3d$anim$StateTransitionAnimation$Transition:[I

    :try_start_0
    sget-object v1, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->Outgoing:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$1;->$SwitchMap$cn$nubia$gallery3d$anim$StateTransitionAnimation$Transition:[I

    sget-object v1, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$1;->$SwitchMap$cn$nubia$gallery3d$anim$StateTransitionAnimation$Transition:[I

    sget-object v1, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$1;->$SwitchMap$cn$nubia$gallery3d$anim$StateTransitionAnimation$Transition:[I

    sget-object v1, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
