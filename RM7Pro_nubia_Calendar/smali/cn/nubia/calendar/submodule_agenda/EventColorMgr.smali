.class public Lcn/nubia/calendar/submodule_agenda/EventColorMgr;
.super Ljava/lang/Object;
.source "EventColorMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;,
        Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    }
.end annotation


# static fields
.field public static final COLOR_FILL_BIRTHDAY:I = -0xb21

.field private static COLOR_FILL_DEFAULT:I = 0x0

.field public static final COLOR_FILL_EXCHANGE:I = -0xf17

.field public static final COLOR_FILL_GOOGLE:I = -0xe02

.field private static COLOR_FILL_LOCAL:I = 0x0

.field public static final COLOR_FILL_NUBIA:I = -0x18041a

.field public static final COLOR_STOKE_BIRTHDAY:I = -0x113b8b

.field private static COLOR_STOKE_DEFAULT:I = 0x0

.field public static final COLOR_STOKE_EXCHANGE:I = -0x63951

.field public static final COLOR_STOKE_GOOGLE:I = -0x203c0a

.field public static COLOR_STOKE_LOCAL:I = 0x0

.field public static final COLOR_STOKE_NUBIA:I = -0x692b6b

.field public static final INDEX_ACCOUNT_TYPE:I = 0x1

.field public static final INDEX_NAME:I = 0x2

.field public static final INDEX_ROW_ID:I

.field private static final PROJECTION_CALENDARS:[Ljava/lang/String;

.field private static mInstance:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;


# instance fields
.field private mCalendarIdColor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->PROJECTION_CALENDARS:[Ljava/lang/String;

    .line 32
    const v0, -0x1b0a01

    sput v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_FILL_LOCAL:I

    .line 38
    const v0, -0x8a3a0c

    sput v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_STOKE_LOCAL:I

    .line 43
    sget v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_FILL_LOCAL:I

    sput v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_FILL_DEFAULT:I

    .line 44
    sget v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_STOKE_LOCAL:I

    sput v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_STOKE_DEFAULT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->init(Landroid/content/Context;)V

    .line 77
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;-><init>(Lcn/nubia/calendar/submodule_agenda/EventColorMgr;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->mQueryHandler:Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->mCalendarIdColor:Ljava/util/HashMap;

    .line 79
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->query()V

    .line 80
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_FILL_DEFAULT:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_STOKE_DEFAULT:I

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_agenda/EventColorMgr;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    .prologue
    .line 15
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->mCalendarIdColor:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getCOLOR_FILL_DEFAULT()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_FILL_DEFAULT:I

    return v0
.end method

.method public static getCOLOR_STOKE_DEFAULT()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_STOKE_DEFAULT:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/calendar/submodule_agenda/EventColorMgr;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->mInstance:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->mInstance:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    .line 96
    :cond_0
    sget-object v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->mInstance:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    const v0, 0x7f0d003e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_FILL_LOCAL:I

    .line 67
    const v0, 0x7f0d003f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_STOKE_LOCAL:I

    .line 69
    sget v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_FILL_LOCAL:I

    sput v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_FILL_DEFAULT:I

    .line 70
    sget v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_STOKE_LOCAL:I

    sput v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->COLOR_STOKE_DEFAULT:I

    .line 72
    :cond_0
    return-void
.end method

.method private query()V
    .locals 9

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->mCalendarIdColor:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 85
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->mQueryHandler:Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->PROJECTION_CALENDARS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v8

    .line 88
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getColorByCalendarId(J)Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    .locals 3
    .param p1, "calendarId"    # J

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->mCalendarIdColor:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;

    return-object v0
.end method
