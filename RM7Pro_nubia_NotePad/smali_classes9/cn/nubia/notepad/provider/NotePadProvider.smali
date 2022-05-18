.class public Lcn/nubia/notepad/provider/NotePadProvider;
.super Landroid/content/ContentProvider;
.source "NotePadProvider.java"


# static fields
.field private static final NOTES:I = 0x1

.field private static final NOTE_ID:I = 0x2

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final WIDGET:I = 0x3

.field private static final WIDGET_ID:I = 0x4

.field private static sNotesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sWidgetProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOpenHelper:Lcn/nubia/notepad/provider/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 32
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.notepad.provider.NotePad"

    const-string v2, "notes"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.notepad.provider.NotePad"

    const-string v2, "notes/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.notepad.provider.NotePad"

    const-string v2, "widget"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.notepad.provider.NotePad"

    const-string v2, "widget/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    .line 38
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "content"

    const-string v2, "content"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "created"

    const-string v2, "created"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "modified"

    const-string v2, "modified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "classify"

    const-string v2, "classify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "resource"

    const-string v2, "resource"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "remind"

    const-string v2, "remind"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "remind_time"

    const-string v2, "remind_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "mode"

    const-string v2, "mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "top"

    const-string v2, "top"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "modify"

    const-string v2, "modify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "server_id"

    const-string v2, "server_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attachment"

    const-string v2, "attachment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "extra_1"

    const-string v2, "extra_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "second_title"

    const-string v2, "second_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sWidgetProjectionMap:Ljava/util/HashMap;

    .line 57
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sWidgetProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sWidgetProjectionMap:Ljava/util/HashMap;

    const-string v1, "widget_id"

    const-string v2, "widget_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->sWidgetProjectionMap:Ljava/util/HashMap;

    const-string v1, "note_id"

    const-string v2, "note_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/16 v8, 0x29

    const/4 v5, 0x1

    .line 200
    iget-object v4, p0, Lcn/nubia/notepad/provider/NotePadProvider;->mOpenHelper:Lcn/nubia/notepad/provider/DatabaseHelper;

    invoke-virtual {v4}, Lcn/nubia/notepad/provider/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 202
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcn/nubia/notepad/provider/NotePadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 228
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    :pswitch_0
    const-string v4, "notes"

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 231
    .local v0, "count":I
    :goto_0
    iget-object v4, p0, Lcn/nubia/notepad/provider/NotePadProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 232
    return v0

    .line 208
    .end local v0    # "count":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    .local v2, "noteId":Ljava/lang/String;
    const-string v5, "notes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 211
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-virtual {v1, v5, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 213
    .restart local v0    # "count":I
    goto :goto_0

    .line 211
    .end local v0    # "count":I
    :cond_0
    const-string v4, ""

    goto :goto_1

    .line 216
    .end local v2    # "noteId":Ljava/lang/String;
    :pswitch_2
    const-string v4, "widget"

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 217
    .restart local v0    # "count":I
    goto :goto_0

    .line 220
    .end local v0    # "count":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    .local v3, "widgetId":Ljava/lang/String;
    const-string v5, "widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widget_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-virtual {v1, v5, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 225
    .restart local v0    # "count":I
    goto/16 :goto_0

    .line 223
    .end local v0    # "count":I
    :cond_1
    const-string v4, ""

    goto :goto_2

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 73
    sget-object v0, Lcn/nubia/notepad/provider/NotePadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.nubia.note"

    .line 81
    :goto_0
    return-object v0

    .line 77
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.nubia.note"

    goto :goto_0

    .line 79
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.nubia.widget"

    goto :goto_0

    .line 81
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/vnd.nubia.widget"

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 153
    if-eqz p2, :cond_0

    .line 154
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 158
    .local v3, "values":Landroid/content/ContentValues;
    :goto_0
    iget-object v6, p0, Lcn/nubia/notepad/provider/NotePadProvider;->mOpenHelper:Lcn/nubia/notepad/provider/DatabaseHelper;

    invoke-virtual {v6}, Lcn/nubia/notepad/provider/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 160
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 161
    .local v2, "resultUri":Landroid/net/Uri;
    sget-object v6, Lcn/nubia/notepad/provider/NotePadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 193
    :pswitch_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 156
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "resultUri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .restart local v3    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 163
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "resultUri":Landroid/net/Uri;
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 165
    .local v1, "now":Ljava/lang/Long;
    const-string v6, "created"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 166
    const-string v6, "created"

    invoke-virtual {v3, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    :cond_1
    const-string v6, "modified"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 170
    const-string v6, "modified"

    invoke-virtual {v3, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    :cond_2
    const-string v6, "top"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 174
    const-string v6, "top"

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_3
    const-string v6, "notes"

    const-string v7, "content"

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 178
    .local v4, "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_4

    .line 179
    sget-object v6, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 180
    iget-object v6, p0, Lcn/nubia/notepad/provider/NotePadProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 195
    .end local v1    # "now":Ljava/lang/Long;
    :cond_4
    :goto_1
    return-object v2

    .line 185
    .end local v4    # "rowId":J
    :pswitch_2
    const-string v6, "widget"

    invoke-virtual {v0, v6, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 186
    .restart local v4    # "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_4

    .line 187
    sget-object v6, Lcn/nubia/notepad/provider/NotePadTable$Widget;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 188
    iget-object v6, p0, Lcn/nubia/notepad/provider/NotePadProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcn/nubia/notepad/provider/NotePadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/provider/NotePadProvider;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcn/nubia/notepad/provider/NotePadProvider;->mOpenHelper:Lcn/nubia/notepad/provider/DatabaseHelper;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcn/nubia/notepad/provider/DatabaseHelper;

    iget-object v1, p0, Lcn/nubia/notepad/provider/NotePadProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/notepad/provider/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/provider/NotePadProvider;->mOpenHelper:Lcn/nubia/notepad/provider/DatabaseHelper;

    .line 68
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 90
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 91
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcn/nubia/notepad/provider/NotePadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 121
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :pswitch_0
    sget-object v2, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 94
    const-string v2, "notes"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const-string v7, "top DESC, modified DESC"

    .line 133
    .local v7, "orderBy":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcn/nubia/notepad/provider/NotePadProvider;->mOpenHelper:Lcn/nubia/notepad/provider/DatabaseHelper;

    invoke-virtual {v2}, Lcn/nubia/notepad/provider/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 144
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 146
    .local v8, "c":Landroid/database/Cursor;
    iget-object v2, p0, Lcn/nubia/notepad/provider/NotePadProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 147
    return-object v8

    .line 98
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :pswitch_1
    sget-object v2, Lcn/nubia/notepad/provider/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 99
    const-string v2, "notes"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :pswitch_2
    sget-object v2, Lcn/nubia/notepad/provider/NotePadProvider;->sWidgetProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 105
    const-string v2, "widget"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 106
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string p5, "_ID DESC"

    goto :goto_0

    .line 112
    :pswitch_3
    sget-object v2, Lcn/nubia/notepad/provider/NotePadProvider;->sWidgetProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 113
    const-string v2, "widget"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const-string p5, "_ID DESC"

    goto/16 :goto_0

    .line 129
    :cond_1
    move-object v7, p5

    .restart local v7    # "orderBy":Ljava/lang/String;
    goto/16 :goto_1

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/16 v8, 0x29

    const/4 v5, 0x1

    .line 237
    iget-object v4, p0, Lcn/nubia/notepad/provider/NotePadProvider;->mOpenHelper:Lcn/nubia/notepad/provider/DatabaseHelper;

    invoke-virtual {v4}, Lcn/nubia/notepad/provider/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 239
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcn/nubia/notepad/provider/NotePadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 262
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 241
    :pswitch_0
    const-string v4, "notes"

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 265
    .local v0, "count":I
    :goto_0
    iget-object v4, p0, Lcn/nubia/notepad/provider/NotePadProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 266
    return v0

    .line 245
    .end local v0    # "count":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    .local v2, "noteId":Ljava/lang/String;
    const-string v5, "notes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 247
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-virtual {v1, v5, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 248
    .restart local v0    # "count":I
    goto :goto_0

    .line 247
    .end local v0    # "count":I
    :cond_0
    const-string v4, ""

    goto :goto_1

    .line 251
    .end local v2    # "noteId":Ljava/lang/String;
    :pswitch_2
    const-string v4, "widget"

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 252
    .restart local v0    # "count":I
    goto :goto_0

    .line 255
    .end local v0    # "count":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 256
    .local v3, "widgetId":Ljava/lang/String;
    const-string v5, "widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widget_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 258
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-virtual {v1, v5, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 259
    .restart local v0    # "count":I
    goto/16 :goto_0

    .line 258
    .end local v0    # "count":I
    :cond_1
    const-string v4, ""

    goto :goto_2

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
