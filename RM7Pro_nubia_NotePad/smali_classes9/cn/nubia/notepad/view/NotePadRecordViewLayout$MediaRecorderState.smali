.class final enum Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;
.super Ljava/lang/Enum;
.source "NotePadRecordViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NotePadRecordViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MediaRecorderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

.field public static final enum PAUSED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

.field public static final enum RECORDING:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

.field public static final enum STOPPED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->STOPPED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->RECORDING:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->PAUSED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->STOPPED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->RECORDING:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->PAUSED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->$VALUES:[Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const-class v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    return-object v0
.end method

.method public static values()[Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->$VALUES:[Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    invoke-virtual {v0}, [Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    return-object v0
.end method
