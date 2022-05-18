.class Lcn/nubia/i/j$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/j;

.field private b:Ljava/lang/String;

.field private c:Lcn/nubia/i/a;


# direct methods
.method constructor <init>(Lcn/nubia/i/j;Ljava/lang/String;Lcn/nubia/i/a;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcn/nubia/i/j$a;->a:Lcn/nubia/i/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 80
    iput-object p2, p0, Lcn/nubia/i/j$a;->b:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcn/nubia/i/j$a;->c:Lcn/nubia/i/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/i/j$a;)Lcn/nubia/i/a;
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/nubia/i/j$a;->c:Lcn/nubia/i/a;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 29

    move-object/from16 v0, p0

    .line 86
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    const-string v1, "LocalPrismaDatabase"

    const-string v2, "run --"

    .line 88
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, v0, Lcn/nubia/i/j$a;->a:Lcn/nubia/i/j;

    invoke-virtual {v2}, Lcn/nubia/i/j;->c()V

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v3, v0, Lcn/nubia/i/j$a;->a:Lcn/nubia/i/j;

    invoke-static {v3}, Lcn/nubia/i/j;->a(Lcn/nubia/i/j;)Lcn/nubia/i/l;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/i/l;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 93
    sget-object v5, Lcn/nubia/i/l;->b:Ljava/lang/String;

    const/16 v3, 0x9

    new-array v6, v3, [Ljava/lang/String;

    sget-object v3, Lcn/nubia/i/l;->e:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v6, v12

    sget-object v3, Lcn/nubia/i/l;->f:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v3, v6, v13

    sget-object v3, Lcn/nubia/i/l;->g:Ljava/lang/String;

    const/4 v14, 0x2

    aput-object v3, v6, v14

    sget-object v3, Lcn/nubia/i/l;->k:Ljava/lang/String;

    const/4 v15, 0x3

    aput-object v3, v6, v15

    sget-object v3, Lcn/nubia/i/l;->h:Ljava/lang/String;

    const/4 v11, 0x4

    aput-object v3, v6, v11

    sget-object v3, Lcn/nubia/i/l;->m:Ljava/lang/String;

    const/4 v10, 0x5

    aput-object v3, v6, v10

    sget-object v3, Lcn/nubia/i/l;->l:Ljava/lang/String;

    const/4 v9, 0x6

    aput-object v3, v6, v9

    sget-object v3, Lcn/nubia/i/l;->j:Ljava/lang/String;

    const/4 v8, 0x7

    aput-object v3, v6, v8

    sget-object v3, Lcn/nubia/i/l;->i:Ljava/lang/String;

    const/16 v7, 0x8

    aput-object v3, v6, v7

    iget-object v3, v0, Lcn/nubia/i/j$a;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcn/nubia/i/l;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ASC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v7, v3

    const/4 v3, 0x7

    move v3, v9

    move-object/from16 v9, v17

    move v3, v10

    move-object/from16 v10, v18

    move v3, v11

    move-object/from16 v11, v16

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 105
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    :cond_0
    new-instance v5, Lcn/nubia/i/i;

    .line 108
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 109
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 110
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 111
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 112
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/4 v6, 0x5

    .line 113
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/4 v7, 0x6

    .line 114
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/4 v8, 0x7

    .line 115
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v9, 0x8

    .line 116
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v28}, Lcn/nubia/i/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    if-eqz v4, :cond_2

    .line 122
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_2
    iget-object v3, v0, Lcn/nubia/i/j$a;->a:Lcn/nubia/i/j;

    invoke-virtual {v3}, Lcn/nubia/i/j;->d()V

    .line 126
    iget-object v3, v0, Lcn/nubia/i/j$a;->a:Lcn/nubia/i/j;

    invoke-static {v3}, Lcn/nubia/i/j;->b(Lcn/nubia/i/j;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcn/nubia/i/j$a$1;

    invoke-direct {v4, v0, v2}, Lcn/nubia/i/j$a$1;-><init>(Lcn/nubia/i/j$a;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v2, "Prisma database read end"

    .line 134
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
