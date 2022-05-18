.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/google/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/google/gson/internal/ConstructorConstructor;
    .param p2, "fieldNamingPolicy"    # Lcom/google/gson/FieldNamingStrategy;
    .param p3, "excluder"    # Lcom/google/gson/internal/Excluder;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 54
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 55
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
    .param p1, "x1"    # Lcom/google/gson/Gson;
    .param p2, "x2"    # Ljava/lang/reflect/Field;
    .param p3, "x3"    # Lcom/google/gson/reflect/TypeToken;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldAdapter(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method private createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .locals 9
    .param p1, "context"    # Lcom/google/gson/Gson;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "serialize"    # Z
    .param p6, "deserialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;ZZ)",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    .prologue
    .line 81
    .local p4, "fieldType":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<*>;"
    invoke-virtual {p4}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v8

    .line 83
    .local v8, "isPrimitive":Z
    new-instance v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/google/gson/reflect/TypeToken;Z)V

    return-object v0
.end method

.method private getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .locals 16
    .param p1, "context"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<*>;"
    .local p3, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 114
    .local v13, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    return-object v13

    .line 118
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 119
    .local v9, "declaredType":Ljava/lang/reflect/Type;
    :goto_0
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_0

    .line 120
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 121
    .local v11, "fields":[Ljava/lang/reflect/Field;
    array-length v15, v11

    const/4 v1, 0x0

    move v14, v1

    :goto_1
    if-ge v14, v15, :cond_4

    aget-object v3, v11, v14

    .line 122
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    .line 123
    .local v6, "serialize":Z
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v7

    .line 124
    .local v7, "deserialize":Z
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 121
    :cond_2
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_1

    .line 127
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v10

    .line 129
    .local v10, "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-static {v10}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 129
    invoke-direct/range {v1 .. v7}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    move-result-object v8

    .line 131
    .local v8, "boundField":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    iget-object v1, v8, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-interface {v13, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 132
    .local v12, "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    if-eqz v12, :cond_2

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " declares multiple JSON fields named "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v12, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "serialize":Z
    .end local v7    # "deserialize":Z
    .end local v8    # "boundField":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v10    # "fieldType":Ljava/lang/reflect/Type;
    .end local v12    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p2

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p3

    .line 139
    goto/16 :goto_0
.end method

.method private getFieldAdapter(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 3
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;)",
            "Lcom/google/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p3, "fieldType":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<*>;"
    const-class v2, Lcom/google/gson/annotations/JsonAdapter;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/gson/annotations/JsonAdapter;

    .line 105
    .local v1, "annotation":Lcom/google/gson/annotations/JsonAdapter;
    if-eqz v1, :cond_0

    .line 106
    iget-object v2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-static {v2, p1, p3, v1}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 107
    .local v0, "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    if-eqz v0, :cond_0

    .line 109
    .end local v0    # "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method private getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 63
    const-class v1, Lcom/google/gson/annotations/SerializedName;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/SerializedName;

    .line 64
    .local v0, "serializedName":Lcom/google/gson/annotations/SerializedName;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    invoke-interface {v1, p1}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 5
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 70
    .local v1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v3, Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    :goto_0
    return-object v2

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v3, p2}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v0

    .line 75
    .local v0, "constructor":Lcom/google/gson/internal/ObjectConstructor;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 2
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "serialize"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
