.class public final enum Lcom/megvii/facepp/sdk/Facepp$Ability;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/facepp/sdk/Facepp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/megvii/facepp/sdk/Facepp$Ability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum AGEGENDER:Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum BLURNESS:Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum DETECT:Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum DETECT_RECT:Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum EYESTATUS:Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum IDCARD_QUALITY:Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum MINORITY:Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum MOUTHSTATUS:Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum POSE:Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum SMALLFEATEXT:Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum SUPER_FAST:Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum TRACK:Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum TRACK_FAST:Lcom/megvii/facepp/sdk/Facepp$Ability;

.field public static final enum TRACK_ROBUST:Lcom/megvii/facepp/sdk/Facepp$Ability;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 784
    new-instance v0, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v1, "POSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/megvii/facepp/sdk/Facepp$Ability;->POSE:Lcom/megvii/facepp/sdk/Facepp$Ability;

    .line 785
    new-instance v1, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v3, "EYESTATUS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/megvii/facepp/sdk/Facepp$Ability;->EYESTATUS:Lcom/megvii/facepp/sdk/Facepp$Ability;

    .line 786
    new-instance v3, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v5, "MOUTHSTATUS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/megvii/facepp/sdk/Facepp$Ability;->MOUTHSTATUS:Lcom/megvii/facepp/sdk/Facepp$Ability;

    .line 787
    new-instance v5, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v7, "MINORITY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/megvii/facepp/sdk/Facepp$Ability;->MINORITY:Lcom/megvii/facepp/sdk/Facepp$Ability;

    .line 788
    new-instance v7, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v9, "BLURNESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/megvii/facepp/sdk/Facepp$Ability;->BLURNESS:Lcom/megvii/facepp/sdk/Facepp$Ability;

    .line 789
    new-instance v9, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v11, "AGEGENDER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/megvii/facepp/sdk/Facepp$Ability;->AGEGENDER:Lcom/megvii/facepp/sdk/Facepp$Ability;

    .line 790
    new-instance v11, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v13, "SMALLFEATEXT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/megvii/facepp/sdk/Facepp$Ability;->SMALLFEATEXT:Lcom/megvii/facepp/sdk/Facepp$Ability;

    .line 791
    new-instance v13, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v15, "TRACK_FAST"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/megvii/facepp/sdk/Facepp$Ability;->TRACK_FAST:Lcom/megvii/facepp/sdk/Facepp$Ability;

    .line 792
    new-instance v15, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v14, "TRACK_ROBUST"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/megvii/facepp/sdk/Facepp$Ability;->TRACK_ROBUST:Lcom/megvii/facepp/sdk/Facepp$Ability;

    .line 793
    new-instance v14, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v12, "DETECT_RECT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/megvii/facepp/sdk/Facepp$Ability;->DETECT_RECT:Lcom/megvii/facepp/sdk/Facepp$Ability;

    .line 794
    new-instance v12, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v10, "DETECT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/megvii/facepp/sdk/Facepp$Ability;->DETECT:Lcom/megvii/facepp/sdk/Facepp$Ability;

    .line 795
    new-instance v10, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v8, "IDCARD_QUALITY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/megvii/facepp/sdk/Facepp$Ability;->IDCARD_QUALITY:Lcom/megvii/facepp/sdk/Facepp$Ability;

    .line 796
    new-instance v8, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v6, "TRACK"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/megvii/facepp/sdk/Facepp$Ability;->TRACK:Lcom/megvii/facepp/sdk/Facepp$Ability;

    .line 797
    new-instance v6, Lcom/megvii/facepp/sdk/Facepp$Ability;

    const-string v4, "SUPER_FAST"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/megvii/facepp/sdk/Facepp$Ability;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/megvii/facepp/sdk/Facepp$Ability;->SUPER_FAST:Lcom/megvii/facepp/sdk/Facepp$Ability;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/megvii/facepp/sdk/Facepp$Ability;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 783
    sput-object v4, Lcom/megvii/facepp/sdk/Facepp$Ability;->$VALUES:[Lcom/megvii/facepp/sdk/Facepp$Ability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 783
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/megvii/facepp/sdk/Facepp$Ability;
    .locals 1

    .line 783
    const-class v0, Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/megvii/facepp/sdk/Facepp$Ability;

    return-object p0
.end method

.method public static values()[Lcom/megvii/facepp/sdk/Facepp$Ability;
    .locals 1

    .line 783
    sget-object v0, Lcom/megvii/facepp/sdk/Facepp$Ability;->$VALUES:[Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {v0}, [Lcom/megvii/facepp/sdk/Facepp$Ability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/megvii/facepp/sdk/Facepp$Ability;

    return-object v0
.end method
