.class public final enum Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field public static final enum FLIP:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field public static final enum ROTATE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1294
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 1300
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    const-string v1, "FLIP"

    invoke-direct {v0, v1, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 1289
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    .locals 1

    .prologue
    .line 1303
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method static mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    .locals 1
    .param p0, "modeInt"    # I

    .prologue
    .line 1315
    packed-switch p0, :pswitch_data_0

    .line 1318
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 1320
    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    goto :goto_0

    .line 1315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1289
    const-class v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    .locals 1

    .prologue
    .line 1289
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method


# virtual methods
.method createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1325
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$AnimationStyle:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1328
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 1330
    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 1325
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
