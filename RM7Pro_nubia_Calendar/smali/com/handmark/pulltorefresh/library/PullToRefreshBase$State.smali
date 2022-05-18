.class public final enum Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;


# instance fields
.field private mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1530
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const-string v1, "RESET"

    invoke-direct {v0, v1, v4, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 1536
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const-string v1, "PULL_TO_REFRESH"

    invoke-direct {v0, v1, v5, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 1542
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const-string v1, "RELEASE_TO_REFRESH"

    invoke-direct {v0, v1, v6, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 1547
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const-string v1, "REFRESHING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 1553
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const-string v1, "MANUAL_REFRESHING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 1559
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const-string v1, "OVERSCROLLING"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 1524
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "intValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1580
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1581
    iput p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->mIntValue:I

    .line 1582
    return-void
.end method

.method static mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    .locals 5
    .param p0, "stateInt"    # I

    .prologue
    .line 1568
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1569
    .local v0, "value":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 1575
    .end local v0    # "value":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    :goto_1
    return-object v0

    .line 1568
    .restart local v0    # "value":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1575
    .end local v0    # "value":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    :cond_1
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1524
    const-class v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    return-object v0
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    .locals 1

    .prologue
    .line 1524
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    return-object v0
.end method


# virtual methods
.method getIntValue()I
    .locals 1

    .prologue
    .line 1585
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->mIntValue:I

    return v0
.end method
