.class public Lcn/nubia/calendar/util/CalendarReflectUtils;
.super Ljava/lang/Object;
.source "CalendarReflectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoCompleteTextView_UseDropDownOriginStyle(Landroid/widget/AutoCompleteTextView;Z)Ljava/lang/Object;
    .locals 8
    .param p0, "a"    # Landroid/widget/AutoCompleteTextView;
    .param p1, "isUseOriginStyle"    # Z

    .prologue
    .line 29
    const/4 v3, 0x0

    .line 31
    .local v3, "result":Ljava/lang/Object;
    :try_start_0
    const-string v4, "android.widget.AutoCompleteTextView"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "useDropDownOriginStyle"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 34
    .local v2, "m":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 35
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 41
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 37
    .restart local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static listPopupWindow_UseOriginStyle(Landroid/widget/ListPopupWindow;Z)Ljava/lang/Object;
    .locals 8
    .param p0, "l"    # Landroid/widget/ListPopupWindow;
    .param p1, "isUseOriginStyle"    # Z

    .prologue
    .line 12
    const/4 v3, 0x0

    .line 14
    .local v3, "result":Ljava/lang/Object;
    :try_start_0
    const-string v4, "android.widget.ListPopupWindow"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 15
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "useOriginStyle"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 17
    .local v2, "m":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 18
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 24
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 20
    .restart local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 21
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parcelFileDescriptor_FromData([BLjava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 48
    .local v2, "result":Ljava/lang/Object;
    :try_start_0
    const-string v3, "android.os.ParcelFileDescriptor"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "fromData"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [B

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 53
    .local v1, "m":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 54
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 57
    .restart local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
