.class public final Lcn/nubia/calendar/db/CustomDbHelper$CustomEventTableColumn;
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
    name = "CustomEventTableColumn"
.end annotation


# static fields
.field public static final BACKGROUND_COLOR:Ljava/lang/String; = "background_color"

.field public static final CREATE_CUSTOM_EVENT_TABLE:Ljava/lang/String; = "create table if not exists customEventTable(_id INTEGER PRIMARY KEY AUTOINCREMENT,event_id INTEGER,event_ring_mode INTEGER,event_ring_tone TEXT,sign_color TEXT,background_color TEXT,long_press_backcolor TEXT,long_press_bordercolor TEXT,image_path TEXT);"

.field public static final CUSTOMER_EVENT_TABLE_NAME:Ljava/lang/String; = "customEventTable"

.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final EVENT_RING_MODE:Ljava/lang/String; = "event_ring_mode"

.field public static final EVENT_RING_TONE:Ljava/lang/String; = "event_ring_tone"

.field public static final LONG_PRESS_BACKCOLOR:Ljava/lang/String; = "long_press_backcolor"

.field public static final LONG_PRESS_BORDERCOLOR:Ljava/lang/String; = "long_press_bordercolor"

.field public static final PICTURE_PATH:Ljava/lang/String; = "image_path"

.field public static final SIGN_COLOR:Ljava/lang/String; = "sign_color"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
