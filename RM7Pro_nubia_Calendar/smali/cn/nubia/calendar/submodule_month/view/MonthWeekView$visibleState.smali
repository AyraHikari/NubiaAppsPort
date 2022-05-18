.class final enum Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;
.super Ljava/lang/Enum;
.source "MonthWeekView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "visibleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

.field public static final enum All:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

.field public static final enum Chinese:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

.field public static final enum ChineseAndLunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

.field public static final enum ChineseAndWestern:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

.field public static final enum Lunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

.field public static final enum None:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

.field public static final enum Western:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

.field public static final enum WesternAndLunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 305
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    const-string v1, "All"

    invoke-direct {v0, v1, v3}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->All:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    const-string v1, "ChineseAndWestern"

    invoke-direct {v0, v1, v4}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->ChineseAndWestern:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    const-string v1, "ChineseAndLunar"

    invoke-direct {v0, v1, v5}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->ChineseAndLunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    const-string v1, "WesternAndLunar"

    invoke-direct {v0, v1, v6}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->WesternAndLunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    const-string v1, "Lunar"

    invoke-direct {v0, v1, v7}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->Lunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    const-string v1, "Chinese"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->Chinese:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    const-string v1, "Western"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->Western:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    const-string v1, "None"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->None:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    .line 304
    const/16 v0, 0x8

    new-array v0, v0, [Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->All:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->ChineseAndWestern:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->ChineseAndLunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->WesternAndLunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    aput-object v1, v0, v6

    sget-object v1, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->Lunar:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->Chinese:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->Western:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->None:Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->$VALUES:[Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

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
    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 304
    const-class v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    return-object v0
.end method

.method public static values()[Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->$VALUES:[Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    invoke-virtual {v0}, [Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/calendar/submodule_month/view/MonthWeekView$visibleState;

    return-object v0
.end method
