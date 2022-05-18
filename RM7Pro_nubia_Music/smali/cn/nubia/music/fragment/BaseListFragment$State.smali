.class public final enum Lcn/nubia/music/fragment/BaseListFragment$State;
.super Ljava/lang/Enum;
.source "BaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/BaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/music/fragment/BaseListFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/music/fragment/BaseListFragment$State;

.field public static final enum IDLE:Lcn/nubia/music/fragment/BaseListFragment$State;

.field public static final enum LOADING:Lcn/nubia/music/fragment/BaseListFragment$State;

.field public static final enum LOAD_NULL:Lcn/nubia/music/fragment/BaseListFragment$State;

.field public static final enum LOAD_OK:Lcn/nubia/music/fragment/BaseListFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcn/nubia/music/fragment/BaseListFragment$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcn/nubia/music/fragment/BaseListFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/fragment/BaseListFragment$State;->IDLE:Lcn/nubia/music/fragment/BaseListFragment$State;

    new-instance v0, Lcn/nubia/music/fragment/BaseListFragment$State;

    const-string v1, "LOAD_OK"

    invoke-direct {v0, v1, v3}, Lcn/nubia/music/fragment/BaseListFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/fragment/BaseListFragment$State;->LOAD_OK:Lcn/nubia/music/fragment/BaseListFragment$State;

    new-instance v0, Lcn/nubia/music/fragment/BaseListFragment$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcn/nubia/music/fragment/BaseListFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/fragment/BaseListFragment$State;->LOADING:Lcn/nubia/music/fragment/BaseListFragment$State;

    new-instance v0, Lcn/nubia/music/fragment/BaseListFragment$State;

    const-string v1, "LOAD_NULL"

    invoke-direct {v0, v1, v5}, Lcn/nubia/music/fragment/BaseListFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/fragment/BaseListFragment$State;->LOAD_NULL:Lcn/nubia/music/fragment/BaseListFragment$State;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/nubia/music/fragment/BaseListFragment$State;

    sget-object v1, Lcn/nubia/music/fragment/BaseListFragment$State;->IDLE:Lcn/nubia/music/fragment/BaseListFragment$State;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/music/fragment/BaseListFragment$State;->LOAD_OK:Lcn/nubia/music/fragment/BaseListFragment$State;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/music/fragment/BaseListFragment$State;->LOADING:Lcn/nubia/music/fragment/BaseListFragment$State;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/music/fragment/BaseListFragment$State;->LOAD_NULL:Lcn/nubia/music/fragment/BaseListFragment$State;

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/music/fragment/BaseListFragment$State;->$VALUES:[Lcn/nubia/music/fragment/BaseListFragment$State;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/music/fragment/BaseListFragment$State;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcn/nubia/music/fragment/BaseListFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/fragment/BaseListFragment$State;

    return-object v0
.end method

.method public static values()[Lcn/nubia/music/fragment/BaseListFragment$State;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcn/nubia/music/fragment/BaseListFragment$State;->$VALUES:[Lcn/nubia/music/fragment/BaseListFragment$State;

    invoke-virtual {v0}, [Lcn/nubia/music/fragment/BaseListFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/music/fragment/BaseListFragment$State;

    return-object v0
.end method
