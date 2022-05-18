.class public Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/hotfix/ModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassAccessor"
.end annotation


# instance fields
.field private mCachedFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private mNameAsKey:Z

.field private mUseCache:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1879
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;-><init>(ZZ)V

    .line 1880
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "useCache"    # Z
    .param p2, "nameAsKey"    # Z

    .prologue
    .line 1882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1874
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->mCachedFields:Ljava/util/HashMap;

    .line 1883
    iput-boolean p1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->mUseCache:Z

    .line 1884
    iput-boolean p2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->mNameAsKey:Z

    .line 1885
    return-void
.end method

.method private varargs getKey(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "member"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v6, 0x2f

    .line 1888
    iget-boolean v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->mNameAsKey:Z

    if-eqz v3, :cond_0

    .line 1903
    .end local p2    # "member":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 1891
    .restart local p2    # "member":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1892
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1893
    const/16 v0, 0x2f

    .line 1894
    .local v0, "SEP":C
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1895
    if-eqz p3, :cond_2

    .line 1896
    array-length v4, p3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, p3, v3

    .line 1897
    .local v2, "t":Ljava/lang/Class;
    if-eqz v2, :cond_1

    .line 1898
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1896
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1903
    .end local v0    # "SEP":C
    .end local v2    # "t":Ljava/lang/Class;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public copyFields(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)V
    .locals 7
    .param p2, "src"    # Ljava/lang/Object;
    .param p3, "dest"    # Ljava/lang/Object;
    .param p6, "shallow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "startType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "includes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1947
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 1948
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1949
    .local v0, "cls":Ljava/lang/Class;
    if-eqz p1, :cond_2

    .line 1950
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1951
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1953
    :cond_0
    if-eqz v0, :cond_2

    .line 1954
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1955
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1956
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 1995
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1960
    :cond_2
    if-eqz v0, :cond_7

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1962
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1963
    .local v2, "fs":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_6

    .line 1964
    array-length v5, v2

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_6

    aget-object v1, v2, v3

    .line 1965
    .local v1, "f":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_3

    .line 1966
    if-eqz p5, :cond_4

    .line 1967
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1964
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1970
    :cond_4
    if-eqz p4, :cond_5

    .line 1971
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1975
    :cond_5
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-nez v6, :cond_3

    .line 1980
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1981
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, p3, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1982
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1983
    :catch_0
    move-exception v6

    goto :goto_3

    .line 1989
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fs":[Ljava/lang/reflect/Field;
    :catch_1
    move-exception v3

    .line 1992
    :cond_6
    if-eqz p6, :cond_1

    .line 1999
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_7
    return-void
.end method

.method public getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1907
    .local p1, "startType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1908
    .local v1, "f":Ljava/lang/reflect/Field;
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 1909
    instance-of v4, p2, Ljava/lang/Class;

    if-eqz v4, :cond_0

    check-cast p2, Ljava/lang/Class;

    .end local p2    # "object":Ljava/lang/Object;
    move-object v0, p2

    .line 1910
    .local v0, "cls":Ljava/lang/Class;
    :goto_0
    if-eqz p1, :cond_1

    .line 1911
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1912
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 1909
    .end local v0    # "cls":Ljava/lang/Class;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1915
    .end local p2    # "object":Ljava/lang/Object;
    .restart local v0    # "cls":Ljava/lang/Class;
    :cond_1
    if-eqz v0, :cond_4

    .line 1916
    const/4 v3, 0x0

    .line 1917
    .local v3, "key":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->mUseCache:Z

    if-eqz v4, :cond_3

    .line 1918
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-direct {p0, v0, p3, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->getKey(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 1919
    iget-object v4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->mCachedFields:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f":Ljava/lang/reflect/Field;
    check-cast v1, Ljava/lang/reflect/Field;

    .line 1920
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_3

    move-object v2, v1

    .line 1941
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "key":Ljava/lang/String;
    .local v2, "f":Ljava/lang/reflect/Field;
    :goto_2
    return-object v2

    .line 1937
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v3    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1924
    :cond_3
    if-eqz v0, :cond_4

    .line 1926
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1930
    :goto_3
    if-eqz v1, :cond_2

    .line 1931
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1932
    iget-boolean v4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->mUseCache:Z

    if-eqz v4, :cond_4

    .line 1933
    iget-object v4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->mCachedFields:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "key":Ljava/lang/String;
    :cond_4
    move-object v2, v1

    .line 1941
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    goto :goto_2

    .line 1927
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_3
.end method

.method public getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2002
    .local p1, "startType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 2003
    invoke-virtual {p0, p1, p2, p3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2004
    .local v0, "f":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 2006
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2012
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    .line 2007
    .restart local v0    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 2012
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2016
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2021
    .local p1, "startType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 2022
    invoke-virtual {p0, p1, p2, p3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2023
    .local v0, "f":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 2025
    :try_start_0
    invoke-virtual {v0, p2, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 2026
    .restart local v0    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
