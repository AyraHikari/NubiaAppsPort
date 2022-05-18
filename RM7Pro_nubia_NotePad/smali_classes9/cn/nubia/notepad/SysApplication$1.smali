.class Lcn/nubia/notepad/SysApplication$1;
.super Ljava/lang/Object;
.source "SysApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/SysApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/SysApplication;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/SysApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/SysApplication;

    .prologue
    .line 114
    iput-object p1, p0, Lcn/nubia/notepad/SysApplication$1;->this$0:Lcn/nubia/notepad/SysApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 129
    move-object/from16 v0, p1

    instance-of v15, v0, Lcn/nubia/notepad/NotePadEditorActivity;

    if-nez v15, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    :try_start_0
    const-string v15, "android.view.ViewGroup$ViewLocationHolder"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 132
    .local v2, "holder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v15, "sPool"

    invoke-virtual {v2, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 133
    .local v12, "sPoolField":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 134
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 136
    .local v11, "sPool":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    .line 137
    .local v13, "simplePoolClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v15, "mPool"

    invoke-virtual {v13, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 138
    .local v6, "pooArrayField":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 139
    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/Object;

    move-object v0, v15

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 140
    .local v8, "poolArray":[Ljava/lang/Object;
    const-string v15, "mPoolSize"

    invoke-virtual {v13, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 141
    .local v7, "pooSizeField":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 142
    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 144
    .local v10, "poolSize":I
    invoke-static {v8}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v9

    .line 145
    .local v9, "poolArrayLength":I
    const-string v15, "notepad_preset"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "poolArrayLength : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v9, :cond_4

    .line 147
    aget-object v14, v8, v3

    .line 148
    .local v14, "viewLocationHolder":Ljava/lang/Object;
    if-nez v14, :cond_2

    .line 149
    const-string v15, "notepad_preset"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "poolArray[ "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ] == null"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v16, "mRoot"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 154
    .local v5, "mRootFiled":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    invoke-virtual {v5, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 157
    .local v4, "mRoot":Ljava/lang/Object;
    if-nez v4, :cond_3

    .line 158
    const-string v15, "notepad_preset"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "poolArray[ "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ].mRoot == null"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 174
    .end local v2    # "holder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i":I
    .end local v4    # "mRoot":Ljava/lang/Object;
    .end local v5    # "mRootFiled":Ljava/lang/reflect/Field;
    .end local v6    # "pooArrayField":Ljava/lang/reflect/Field;
    .end local v7    # "pooSizeField":Ljava/lang/reflect/Field;
    .end local v8    # "poolArray":[Ljava/lang/Object;
    .end local v9    # "poolArrayLength":I
    .end local v10    # "poolSize":I
    .end local v11    # "sPool":Ljava/lang/Object;
    .end local v12    # "sPoolField":Ljava/lang/reflect/Field;
    .end local v13    # "simplePoolClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "viewLocationHolder":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 176
    const-string v15, "notepad_preset"

    const-string v16, " ActivityLifecycleCallbacks   error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "holder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "i":I
    .restart local v4    # "mRoot":Ljava/lang/Object;
    .restart local v5    # "mRootFiled":Ljava/lang/reflect/Field;
    .restart local v6    # "pooArrayField":Ljava/lang/reflect/Field;
    .restart local v7    # "pooSizeField":Ljava/lang/reflect/Field;
    .restart local v8    # "poolArray":[Ljava/lang/Object;
    .restart local v9    # "poolArrayLength":I
    .restart local v10    # "poolSize":I
    .restart local v11    # "sPool":Ljava/lang/Object;
    .restart local v12    # "sPoolField":Ljava/lang/reflect/Field;
    .restart local v13    # "simplePoolClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "viewLocationHolder":Ljava/lang/Object;
    :cond_3
    :try_start_1
    const-string v15, "notepad_preset"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Found leak! poolArray[ "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ].mRoot != null"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 164
    .end local v4    # "mRoot":Ljava/lang/Object;
    .end local v5    # "mRootFiled":Ljava/lang/reflect/Field;
    .end local v14    # "viewLocationHolder":Ljava/lang/Object;
    :cond_4
    const-string v15, "notepad_preset"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "poolSize = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v10, :cond_0

    .line 166
    aget-object v14, v8, v3

    .line 168
    .restart local v14    # "viewLocationHolder":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v16, "mRoot"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 169
    .restart local v5    # "mRootFiled":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 171
    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 118
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 124
    return-void
.end method
