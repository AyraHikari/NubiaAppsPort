.class public final Lcn/nubia/calendar/db/CustomDbHelper$CustomReminderTableColumn;
.super Ljava/lang/Object;
.source "CustomDbHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/db/CustomDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomReminderTableColumn"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATE_CUSTOM_REMINDER_TABLE:Ljava/lang/String; = "create table if not exists customReminderTable(_id INTEGER PRIMARY KEY AUTOINCREMENT,event_id INTEGER,miniutes INTEGER,phone_numbers TEXT);"

.field public static final CUSTOM_REMINDER_TABLE_NAME:Ljava/lang/String; = "customReminderTable"

.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final MINIUTES:Ljava/lang/String; = "miniutes"

.field public static final PHONE_NUMBERS:Ljava/lang/String; = "phone_numbers"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const-string v0, "content://cn.nubia.calendar.provider.eventdata/reminder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/db/CustomDbHelper$CustomReminderTableColumn;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
