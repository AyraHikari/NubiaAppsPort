.class public final Lcn/nubia/notepad/provider/NotePadTable$Notes;
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
    name = "Notes"
.end annotation


# static fields
.field public static final ATTACHMET:Ljava/lang/String; = "attachment"

.field public static final CLASSIFY:Ljava/lang/String; = "classify"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.nubia.note"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.nubia.note"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_REVERT_SORT_ORDER:Ljava/lang/String; = "top ASC, modified ASC"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "top DESC, modified DESC"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final EXTRA_1:Ljava/lang/String; = "extra_1"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final MODIFY:Ljava/lang/String; = "modify"

.field public static final REMIND:Ljava/lang/String; = "remind"

.field public static final REMIND_TIME:Ljava/lang/String; = "remind_time"

.field public static final RESOURCE:Ljava/lang/String; = "resource"

.field public static final SECOND_TITLE:Ljava/lang/String; = "second_title"

.field public static final SERVER_ID:Ljava/lang/String; = "server_id"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TOP:Ljava/lang/String; = "top"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content://cn.nubia.notepad.provider.NotePad/notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method
