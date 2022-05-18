.class public final enum Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;
.super Ljava/lang/Enum;
.source "DownSynchronizeListViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SYNCHRONIZED_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

.field public static final enum state_faile:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

.field public static final enum state_no_start:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

.field public static final enum state_success:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    const-string v1, "state_success"

    invoke-direct {v0, v1, v2}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;->state_success:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    .line 31
    new-instance v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    const-string v1, "state_faile"

    invoke-direct {v0, v1, v3}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;->state_faile:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    .line 32
    new-instance v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    const-string v1, "state_no_start"

    invoke-direct {v0, v1, v4}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;->state_no_start:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;->state_success:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;->state_faile:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;->state_no_start:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;->$VALUES:[Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    return-object v0
.end method

.method public static values()[Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;->$VALUES:[Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    invoke-virtual {v0}, [Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    return-object v0
.end method
