.class public final Lcn/nubia/notepad/provider/NotePadTable$Widget;
.super Ljava/lang/Object;
.source "NotePadTable.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/provider/NotePadTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Widget"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.nubia.widget"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.nubia.widget"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final NOTE_ID:Ljava/lang/String; = "note_id"

.field public static final WIDGET_ID:Ljava/lang/String; = "widget_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "content://cn.nubia.notepad.provider.NotePad/widget"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/notepad/provider/NotePadTable$Widget;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method
