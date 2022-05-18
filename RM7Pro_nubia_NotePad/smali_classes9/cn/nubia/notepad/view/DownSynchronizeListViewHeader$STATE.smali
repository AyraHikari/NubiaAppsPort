.class public final enum Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;
.super Ljava/lang/Enum;
.source "DownSynchronizeListViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

.field public static final enum state_normal:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

.field public static final enum state_stretch:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

.field public static final enum state_stretch_ready:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

.field public static final enum state_synchronized:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

.field public static final enum state_synchronizing:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    const-string v1, "state_normal"

    invoke-direct {v0, v1, v2}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_normal:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    .line 23
    new-instance v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    const-string v1, "state_stretch"

    invoke-direct {v0, v1, v3}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_stretch:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    .line 24
    new-instance v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    const-string v1, "state_stretch_ready"

    invoke-direct {v0, v1, v4}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_stretch_ready:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    .line 25
    new-instance v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    const-string v1, "state_synchronizing"

    invoke-direct {v0, v1, v5}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_synchronizing:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    .line 26
    new-instance v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    const-string v1, "state_synchronized"

    invoke-direct {v0, v1, v6}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_synchronized:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_normal:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_stretch:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_stretch_ready:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_synchronizing:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_synchronized:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->$VALUES:[Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    return-object v0
.end method

.method public static values()[Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->$VALUES:[Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    invoke-virtual {v0}, [Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    return-object v0
.end method
