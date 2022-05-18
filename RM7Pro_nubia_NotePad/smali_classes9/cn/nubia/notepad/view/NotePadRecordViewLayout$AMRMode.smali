.class final enum Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;
.super Ljava/lang/Enum;
.source "NotePadRecordViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NotePadRecordViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AMRMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

.field public static final enum MR122:Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

.field public static final enum MR475:Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

.field public static final enum MR515:Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    const-string v1, "MR475"

    invoke-direct {v0, v1, v2}, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;->MR475:Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    const-string v1, "MR515"

    invoke-direct {v0, v1, v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;->MR515:Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    const-string v1, "MR122"

    invoke-direct {v0, v1, v4}, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;->MR122:Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    .line 119
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;->MR475:Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;->MR515:Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;->MR122:Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;->$VALUES:[Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

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
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    const-class v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    return-object v0
.end method

.method public static values()[Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;->$VALUES:[Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    invoke-virtual {v0}, [Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;

    return-object v0
.end method
