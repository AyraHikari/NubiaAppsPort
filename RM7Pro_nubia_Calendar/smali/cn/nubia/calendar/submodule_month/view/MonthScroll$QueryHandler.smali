.class Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;
.super Lcn/nubia/calendar/AsyncQueryService;
.source "MonthScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/MonthScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEndLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStartLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1071
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .line 1072
    invoke-direct {p0, p2}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 1074
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->mEndLists:Ljava/util/HashMap;

    .line 1075
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->mStartLists:Ljava/util/HashMap;

    .line 1076
    iput-object p2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->mContext:Landroid/content/Context;

    .line 1077
    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

    .prologue
    .line 1065
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 1065
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->buildQueryResult(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized buildQueryResult(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 26
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1109
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1203
    .end local p1    # "cursor":Landroid/database/Cursor;
    :goto_0
    monitor-exit p0

    return-object p1

    .line 1112
    .restart local p1    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_0
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1113
    .local v22, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1114
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->mStartLists:Ljava/util/HashMap;

    const/4 v3, 0x1

    .line 1117
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    .line 1118
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1116
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->mEndLists:Ljava/util/HashMap;

    const/4 v3, 0x1

    .line 1120
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    .line 1121
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1119
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1109
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1123
    .restart local v22    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 1124
    new-instance v19, Landroid/database/MatrixCursor;

    invoke-static {}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$2300()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1125
    .local v19, "matrixCursor":Landroid/database/MatrixCursor;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1126
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 1128
    .local v5, "condition":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1130
    .local v18, "eventCursor":Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 1131
    invoke-static {}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$2300()[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "dtstart ASC, dtend ASC, title ASC"

    .line 1130
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1133
    const-wide/16 v20, 0x0

    .line 1134
    .local v20, "eventID":J
    const-wide/16 v24, 0x0

    .line 1135
    .local v24, "startTime":J
    const-wide/16 v16, 0x0

    .line 1136
    .local v16, "endTime":J
    :goto_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1137
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1138
    const/4 v2, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->mStartLists:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 1140
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_2

    .line 1141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->mEndLists:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1143
    :cond_2
    const-string v13, ""

    .line 1144
    .local v13, "accountType":Ljava/lang/String;
    const-string v12, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1145
    .local v12, "accountName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1147
    .local v14, "calendarCursor":Landroid/database/Cursor;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->mContext:Landroid/content/Context;

    .line 1148
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const-string v9, "_id = ?"

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 1153
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1152
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    const/4 v11, 0x0

    .line 1149
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1155
    if-eqz v14, :cond_3

    .line 1156
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 1157
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1158
    const-string v2, "account_type"

    .line 1160
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1159
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1161
    const-string v2, "calendar_displayName"

    .line 1163
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1162
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v12

    .line 1168
    :cond_3
    if-eqz v14, :cond_4

    .line 1169
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1173
    :cond_4
    :goto_3
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1175
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 1177
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    .line 1179
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    .line 1181
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x4

    .line 1183
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1182
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 1184
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 1185
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x7

    .line 1187
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1186
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x8

    .line 1189
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1188
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object v12, v2, v3

    const/16 v3, 0xa

    aput-object v13, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xb

    .line 1193
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1174
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2

    .line 1195
    .end local v12    # "accountName":Ljava/lang/String;
    .end local v13    # "accountType":Ljava/lang/String;
    .end local v14    # "calendarCursor":Landroid/database/Cursor;
    .end local v16    # "endTime":J
    .end local v20    # "eventID":J
    .end local v24    # "startTime":J
    :catch_0
    move-exception v15

    .line 1196
    .local v15, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1198
    if-eqz v18, :cond_5

    .line 1199
    :try_start_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v5    # "condition":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v18    # "eventCursor":Landroid/database/Cursor;
    :cond_5
    :goto_4
    move-object/from16 p1, v19

    .line 1203
    goto/16 :goto_0

    .line 1165
    .restart local v5    # "condition":Ljava/lang/String;
    .restart local v12    # "accountName":Ljava/lang/String;
    .restart local v13    # "accountType":Ljava/lang/String;
    .restart local v14    # "calendarCursor":Landroid/database/Cursor;
    .restart local v16    # "endTime":J
    .restart local v18    # "eventCursor":Landroid/database/Cursor;
    .restart local v20    # "eventID":J
    .restart local v24    # "startTime":J
    :catch_1
    move-exception v15

    .line 1166
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1168
    if-eqz v14, :cond_4

    .line 1169
    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_3

    .line 1198
    .end local v12    # "accountName":Ljava/lang/String;
    .end local v13    # "accountType":Ljava/lang/String;
    .end local v14    # "calendarCursor":Landroid/database/Cursor;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "endTime":J
    .end local v20    # "eventID":J
    .end local v24    # "startTime":J
    :catchall_1
    move-exception v2

    if-eqz v18, :cond_6

    .line 1199
    :try_start_9
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1201
    :cond_6
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1168
    .restart local v12    # "accountName":Ljava/lang/String;
    .restart local v13    # "accountType":Ljava/lang/String;
    .restart local v14    # "calendarCursor":Landroid/database/Cursor;
    .restart local v16    # "endTime":J
    .restart local v20    # "eventID":J
    .restart local v24    # "startTime":J
    :catchall_2
    move-exception v2

    if-eqz v14, :cond_7

    .line 1169
    :try_start_a
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1171
    :cond_7
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1198
    .end local v12    # "accountName":Ljava/lang/String;
    .end local v13    # "accountType":Ljava/lang/String;
    .end local v14    # "calendarCursor":Landroid/database/Cursor;
    :cond_8
    if-eqz v18, :cond_5

    .line 1199
    :try_start_b
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1208
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1082
    move-object v1, p3

    .line 1083
    .local v1, "mCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->mStartLists:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1084
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->mEndLists:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1085
    new-instance v3, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;

    invoke-direct {v3, p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;Landroid/database/Cursor;)V

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    .line 1101
    invoke-virtual {v3, v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    :goto_0
    return-void

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 1212
    return-void
.end method
