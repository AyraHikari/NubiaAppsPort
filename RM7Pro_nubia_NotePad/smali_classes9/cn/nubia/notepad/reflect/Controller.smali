.class public Lcn/nubia/notepad/reflect/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# instance fields
.field private clz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private insertionPointCursorControllerObject:Ljava/lang/Object;

.field private mEditText:Landroid/widget/EditText;

.field private selectionModifierCursorControllerObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/nubia/notepad/reflect/Controller;->mEditText:Landroid/widget/EditText;

    .line 18
    return-void
.end method

.method private isShow()Ljava/lang/reflect/Method;
    .locals 9

    .prologue
    .line 22
    :try_start_0
    const-class v6, Landroid/widget/TextView;

    const-string v7, "mEditor"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 23
    .local v3, "mEditor":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 24
    iget-object v6, p0, Lcn/nubia/notepad/reflect/Controller;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    .local v1, "editorObject":Ljava/lang/Object;
    const-string v6, "android.widget.Editor"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 26
    .local v2, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "mInsertionPointCursorController"

    .line 27
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 28
    .local v4, "mInsertionPointCursorController":Ljava/lang/reflect/Field;
    const-string v6, "mSelectionModifierCursorController"

    .line 29
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 30
    .local v5, "mSelectionModifierCursorController":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 31
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 33
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/notepad/reflect/Controller;->insertionPointCursorControllerObject:Ljava/lang/Object;

    .line 35
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/notepad/reflect/Controller;->selectionModifierCursorControllerObject:Ljava/lang/Object;

    .line 36
    const-string v6, "android.widget.NubiaCursorController"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/notepad/reflect/Controller;->clz:Ljava/lang/Class;

    .line 37
    iget-object v6, p0, Lcn/nubia/notepad/reflect/Controller;->clz:Ljava/lang/Class;

    const-string v7, "isShowing"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 39
    .end local v1    # "editorObject":Ljava/lang/Object;
    .end local v2    # "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "mEditor":Ljava/lang/reflect/Field;
    .end local v4    # "mInsertionPointCursorController":Ljava/lang/reflect/Field;
    .end local v5    # "mSelectionModifierCursorController":Ljava/lang/reflect/Field;
    :goto_0
    return-object v6

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public controllerIsShow()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-direct {p0}, Lcn/nubia/notepad/reflect/Controller;->isShow()Ljava/lang/reflect/Method;

    move-result-object v4

    if-nez v4, :cond_0

    .line 56
    :goto_0
    return v5

    .line 47
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/reflect/Controller;->isShow()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 49
    .local v1, "isShow":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v4, p0, Lcn/nubia/notepad/reflect/Controller;->insertionPointCursorControllerObject:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 49
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 51
    .local v2, "mInsertControllerIsShowing":Z
    iget-object v4, p0, Lcn/nubia/notepad/reflect/Controller;->selectionModifierCursorControllerObject:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 52
    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 51
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 53
    .local v3, "mSelectionControllerIsShowing":Z
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 55
    .end local v2    # "mInsertControllerIsShowing":Z
    .end local v3    # "mSelectionControllerIsShowing":Z
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public hideController()V
    .locals 5

    .prologue
    .line 62
    invoke-virtual {p0}, Lcn/nubia/notepad/reflect/Controller;->controllerIsShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/reflect/Controller;->clz:Ljava/lang/Class;

    const-string v3, "hide"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 65
    .local v1, "hide":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcn/nubia/notepad/reflect/Controller;->insertionPointCursorControllerObject:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v2, p0, Lcn/nubia/notepad/reflect/Controller;->selectionModifierCursorControllerObject:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1    # "hide":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
