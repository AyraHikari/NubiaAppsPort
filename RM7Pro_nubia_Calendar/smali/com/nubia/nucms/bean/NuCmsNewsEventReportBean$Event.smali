.class public final enum Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;
.super Ljava/lang/Enum;
.source "NuCmsNewsEventReportBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

.field public static final enum NEWS_CLICK:Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

.field public static final enum NEWS_DISLIKE:Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

.field public static final enum NEWS_SHARE:Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    const-string v1, "NEWS_CLICK"

    const-string v2, "s_iflow_click_cnt"

    invoke-direct {v0, v1, v3, v2}, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;->NEWS_CLICK:Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    new-instance v0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    const-string v1, "NEWS_SHARE"

    const-string v2, "s_iflow_share"

    invoke-direct {v0, v1, v4, v2}, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;->NEWS_SHARE:Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    new-instance v0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    const-string v1, "NEWS_DISLIKE"

    const-string v2, "s_iflow_dislike"

    invoke-direct {v0, v1, v5, v2}, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;->NEWS_DISLIKE:Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    sget-object v1, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;->NEWS_CLICK:Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;->NEWS_SHARE:Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;->NEWS_DISLIKE:Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;->$VALUES:[Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;->value:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    return-object v0
.end method

.method public static values()[Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;->$VALUES:[Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    invoke-virtual {v0}, [Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsEventReportBean$Event;->value:Ljava/lang/String;

    return-object v0
.end method
